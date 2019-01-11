/****** Object:  Table [DATA].[dimCurrency]    Script Date: 2019/1/9 0:00:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DATA].[dimCurrency](
	[CurrencyCode] [nchar](3) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Currency_CurrencyCode] PRIMARY KEY CLUSTERED 
(
	[CurrencyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [DATA].[dimCurrency] ADD  CONSTRAINT [DF_Currency_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO code for the Currency.' , @level0type=N'SCHEMA',@level0name=N'DATA', @level1type=N'TABLE',@level1name=N'dimCurrency', @level2type=N'COLUMN',@level2name=N'CurrencyCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Currency name.' , @level0type=N'SCHEMA',@level0name=N'DATA', @level1type=N'TABLE',@level1name=N'dimCurrency', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the record was last updated.' , @level0type=N'SCHEMA',@level0name=N'DATA', @level1type=N'TABLE',@level1name=N'dimCurrency', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of GETDATE()' , @level0type=N'SCHEMA',@level0name=N'DATA', @level1type=N'TABLE',@level1name=N'dimCurrency', @level2type=N'CONSTRAINT',@level2name=N'DF_Currency_ModifiedDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key (clustered) constraint' , @level0type=N'SCHEMA',@level0name=N'DATA', @level1type=N'TABLE',@level1name=N'dimCurrency', @level2type=N'CONSTRAINT',@level2name=N'PK_Currency_CurrencyCode'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lookup table containing standard ISO currencies.' , @level0type=N'SCHEMA',@level0name=N'DATA', @level1type=N'TABLE',@level1name=N'dimCurrency'
GO


INSERT INTO DATA.dimCurrency (CurrencyCode,Name)
VALUES 
('AED','Emirati Dirham'),
('AFA','Afghani'),
('ALL','Lek'),
('AMD','Armenian Dram'),
('ANG','Netherlands Antillian Guilder'),
('AOA','Kwanza'),
('ARS','Argentine Peso'),
('ATS','Shilling'),
('AUD','Australian Dollar'),
('AWG','Aruban Guilder'),
('AZM','Azerbaijanian Manat'),
('BBD','Barbados Dollar'),
('BDT','Taka'),
('BEF','Belgian Franc'),
('BGN','Bulgarian Lev'),
('BHD','Bahraini Dinar'),
('BND','Brunei Dollar'),
('BOB','Boliviano'),
('BRL','Brazilian Real'),
('BSD','Bahamian Dollar'),
('BTN','Ngultrum'),
('CAD','Canadian Dollar'),
('CHF','Swiss Franc'),
('CLP','Chilean Peso'),
('CNY','Yuan Renminbi'),
('COP','Colombian Peso'),
('CRC','Costa Rican Colon'),
('CYP','Cyprus Pound'),
('CZK','Czech Koruna'),
('DEM','Deutsche Mark'),
('DKK','Danish Krone'),
('DOP','Dominican Peso'),
('DZD','Algerian Dinar'),
('EEK','Kroon'),
('EGP','Egyptian Pound'),
('ESP','Spanish Peseta'),
('EUR','EURO'),
('FIM','Markka'),
('FJD','Fiji Dollar'),
('FRF','French Franc'),
('GBP','United Kingdom Pound'),
('GHC','Cedi'),
('GRD','Drachma'),
('GTQ','Quetzal'),
('HKD','Hong Kong Dollar'),
('HRK','Croatian Kuna'),
('HUF','Forint'),
('IDR','Rupiah'),
('IEP','Irish Pound'),
('ILS','New Israeli Shekel'),
('INR','Indian Rupee'),
('ISK','Iceland Krona'),
('ITL','Italian Lira'),
('JMD','Jamaican Dollar'),
('JOD','Jordanian Dinar'),
('JPY','Yen'),
('KES','Kenyan Shilling'),
('KRW','Won'),
('KWD','Kuwaiti Dinar'),
('LBP','Lebanese Pound'),
('LKR','Sri Lankan Rupee'),
('LTL','Lithuanian Litas'),
('LVL','Latvian Lats'),
('MAD','Moroccan Dirham'),
('MTL','Maltese Lira'),
('MUR','Mauritius Rupee'),
('MVR','Rufiyaa'),
('MXN','Mexican Peso'),
('MYR','Malaysian Ringgit'),
('NAD','Namibia Dollar'),
('NGN','Naira'),
('NLG','Netherlands Guilder'),
('NOK','Norwegian Krone'),
('NPR','Nepalese Rupee'),
('NZD','New Zealand Dollar'),
('OMR','Omani Rial'),
('PAB','Balboa'),
('PEN','Nuevo Sol'),
('PHP','Philippine Peso'),
('PKR','Pakistan Rupee'),
('PLN','Zloty'),
('PLZ','Polish Zloty(old)'),
('PTE','Portuguese Escudo'),
('PYG','Guarani'),
('ROL','Leu'),
('RUB','Russian Ruble'),
('RUR','Russian Ruble(old)'),
('SAR','Saudi Riyal'),
('SEK','Swedish Krona'),
('SGD','Singapore Dollar'),
('SIT','Tolar'),
('SKK','Slovak Koruna'),
('SVC','El Salvador Colon'),
('THB','Baht'),
('TND','Tunisian Dinar'),
('TRL','Turkish Lira'),
('TTD','Trinidad and Tobago Dollar'),
('TWD','New Taiwan Dollar'),
('USD','US Dollar'),
('UYU','Uruguayan Peso'),
('VEB','Bolivar'),
('VND','Dong'),
('XOF','CFA Franc BCEAO'),
('ZAR','Rand'),
('ZWD','Zimbabwe Dollar')