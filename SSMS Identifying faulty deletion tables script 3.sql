use dataeng                                                     --Query was used to identify faulty tables likely caused by a failing deletion data pipeline used to reflect record updates/changes from the Oracle database to Azure Synapse.

select * from [Config].[WaterMarkTable_OraSarah] 				--all 24 failed tables 6/24
where TableName in ('AR_RECEIVABLE_APPLICATIONS_ALL',
'xxwsh_mtl_reservations_e842',
'OE_PRICE_ADJUSTMENTS',
'PO_LINE_LOCATIONS_ARCHIVE_ALL',
'BOM_COMPONENTS_B',
'BOM_OPERATION_RESOURCES',
'ENG_CHANGE_ROUTE_PEOPLE',
'ENG_CHANGE_ROUTE_STEPS',
'ENG_CHANGE_ROUTES',
'ENG_CHANGES_EXT_B',
'ENG_REVISED_ITEMS',
'FND_PROFILE_OPTION_VALUES',
'GL_DATE_PERIOD_MAP',
'GL_PERIODS',
'HZ_CUST_ACCOUNTS',
'HZ_CUSTOMER_PROFILES',
'HZ_LOCATIONS',
'MTL_GENERIC_DISPOSITIONS',
'OE_ORDER_HEADERS_ALL',
'OZF_RESALE_BATCHES_ALL',
'PER_PEOPLE_F',
'PO_RELEASES_ALL',
'HZ_PARTY_SITES_EXT_B',
'AP_EXPENSE_REPORT_HEADERS_ALL');

SELECT * 
FROM [Config].[WaterMarkTable_OraSarah]
WHERE TableName IN (
    'AR_RECEIVABLE_APPLICATIONS_ALL',
    'xxwsh_mtl_reservations_e842',
    'BOM_OPERATION_RESOURCES',
    'HZ_CUST_ACCOUNTS',
    'HZ_CUSTOMER_PROFILES',
    'HZ_LOCATIONS',
    'MTL_PHYSICAL_INVENTORIES',
    'PER_PEOPLE_F',
    'HZ_PARTY_SITES_EXT_B'
);
