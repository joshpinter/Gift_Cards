select 
trn_sls_dte
,b.loc_id
,a.dept_nbr
,sum(net_chrgd_amt) as sales
from EIPDB_SLV.EIV_SLS_TRN_SKU_AGG_GC a
join eipdb_slv.eiv_c_loc_dim b on a.ei_str_id = b.ei_loc_id 
where trn_sls_dte between '2016-07-03' and '2016-07-30'
and dept_nbr in ('983','833','834')
group by 1,2,3