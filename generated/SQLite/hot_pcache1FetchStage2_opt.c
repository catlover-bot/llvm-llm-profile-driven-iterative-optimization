```c
static SQLITE_NOINLINE PgHdr1 *pcache1FetchStage2(
  PCache1 *pCache,
  unsigned int iKey,
  int createFlag
){
  unsigned int nPinned;
  PGroup *pGroup = pCache->pGroup;
  PgHdr1 *pPage = 0;

  // Step 3: Abort if createFlag is 1 but the cache is nearly full
  assert( pCache->nPage >= pCache->nRecyclable );
  nPinned = pCache->nPage - pCache->nRecyclable;
  assert( pGroup->mxPinned == pGroup->nMaxPage + 10 - pGroup->nMinPage );
  assert( pCache->n90pct == pCache->nMax*9/10 );
  if( createFlag==1 ){
    if( nPinned>=pGroup->mxPinned || nPinned>=pCache->n90pct || 
        (pcache1UnderMemoryPressure(pCache) && pCache->nRecyclable<nPinned) ){
      return 0;
    }
  }

  if( pCache->nPage>=pCache->nHash ) pcache1ResizeHash(pCache);
  assert( pCache->nHash>0 && pCache->apHash );

  // Step 4. Try to recycle a page.
  if( pCache->bPurgeable
   && !pGroup->lru.pLruPrev->isAnchor
   && ((pCache->nPage+1>=pCache->nMax) || pcache1UnderMemoryPressure(pCache))
  ){
    PCache1 *pOther;
    pPage = pGroup->lru.pLruPrev;
    assert( PAGE_IS_UNPINNED(pPage) );
    pcache1RemoveFromHash(pPage, 0);
    pcache1PinPage(pPage);
    pOther = pPage->pCache;
    if( pOther->szAlloc != pCache->szAlloc ){
      pcache1FreePage(pPage);
      pPage = 0;
    }else{
      pGroup->nPurgeable -= (pOther->bPurgeable - pCache->bPurgeable);
    }
  }

  // Step 5. If a usable page buffer has still not been found,
  // attempt to allocate a new one.
  if( !pPage ){
    pPage = pcache1AllocPage(pCache, createFlag==1);
  }

  if( pPage ){
    unsigned int h = iKey & (pCache->nHash - 1); // Use bit-masking for power-of-two hash sizes
    pCache->nPage++;
    pPage->iKey = iKey;
    pPage->pNext = pCache->apHash[h];
    pPage->pCache = pCache;
    pPage->pLruNext = 0;
    *(void **)pPage->page.pExtra = 0;
    pCache->apHash[h] = pPage;
    if( iKey>pCache->iMaxKey ){
      pCache->iMaxKey = iKey;
    }
  }
  return pPage;
}
```