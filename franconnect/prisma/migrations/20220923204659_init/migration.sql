-- CreateTable
CREATE TABLE `BillingContactDetailsAddress` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `zipcode` TEXT NULL,
    `country` TEXT NULL,
    `emailIds` TEXT NULL,
    `extn` TEXT NULL,
    `address` TEXT NULL,
    `faxNumbers` TEXT NULL,
    `mobileNumbers` TEXT NULL,
    `city` TEXT NULL,
    `state` TEXT NULL,
    `phoneNumbers` TEXT NULL,
    `FinancialreferenceId` BIGINT NULL,

    INDEX `IX_BillingContactDetailsAddress_FinancialreferenceId`(`FinancialreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Call` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `date` TEXT NULL,
    `timeAdded` TEXT NULL,
    `comments` TEXT NULL,
    `subject` TEXT NULL,
    `callStatus` TEXT NULL,
    `loggedByID` TEXT NULL,
    `callType` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CenterInfo` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `country` TEXT NULL,
    `city` TEXT NULL,
    `franchiseeName` TEXT NULL,
    `storeTypeId` TEXT NULL,
    `transferDate` TEXT NULL,
    `storeStatus` TEXT NULL,
    `_distributorLicenseNumber2023869614` TEXT NULL,
    `versionID` TEXT NULL,
    `areaID` TEXT NULL,
    `storePhone` TEXT NULL,
    `_customerAccountNumber1215412729` TEXT NULL,
    `state` TEXT NULL,
    `grandStoreOpeningDate` TEXT NULL,
    `taxRateId` TEXT NULL,
    `openingDate` TEXT NULL,
    `lastAttended` TEXT NULL,
    `_licenseBrand2012129995` TEXT NULL,
    `emailID` TEXT NULL,
    `transactionType` TEXT NULL,
    `_enterpriseNumber1691878038` TEXT NULL,
    `lastUpdate` TEXT NULL,
    `reportPeriodStartDate` TEXT NULL,
    `storeEmail` TEXT NULL,
    `franchiseeStatus` TEXT NULL,
    `_services1273437941` TEXT NULL,
    `status` TEXT NULL,
    `centerName` TEXT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ContractSigning` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `fimContract5` TEXT NULL,
    `fimContract4` TEXT NULL,
    `fimContract6` TEXT NULL,
    `fimDdContractRecievedSigned` TEXT NULL,
    `fimContract1` TEXT NULL,
    `fimContract0` TEXT NULL,
    `fimContract3` TEXT NULL,
    `fimContract2` TEXT NULL,
    `recByFrancDate1` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `versionOfUfoc` TEXT NULL,
    `fimDdUfocDate` TEXT NULL,
    `fimRrPromissoryAgreementProperlySigned` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Employee` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `lastName` TEXT NULL,
    `country` TEXT NULL,
    `address` TEXT NULL,
    `city` TEXT NULL,
    `jobTitle` TEXT NULL,
    `muidValue` TEXT NULL,
    `mobile` TEXT NULL,
    `phone1` TEXT NULL,
    `zipcode` TEXT NULL,
    `firstName` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `state` TEXT NULL,
    `email` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Entity` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `fimCbEntityType` TEXT NULL,
    `fimEntityDetail0` TEXT NULL,
    `_overallInsuranceCompliantStatus80720767` TEXT NULL,
    `_overallInsuranceCompliantNotes1358246222` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `areaID` TEXT NULL,
    `fimCbOtherEntityType` TEXT NULL,
    `fimTtEntityName` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FimContractAdditional` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `recByFrancDate2` TEXT NULL,
    `versionOfAdditionalUfoc` TEXT NULL,
    `browserTypeAdditional` TEXT NULL,
    `addUfocDate` TEXT NULL,
    `bussDay10ExpDate` TEXT NULL,
    `ipAddressAdditional` TEXT NULL,
    `ContractSigningreferenceId` BIGINT NULL,

    INDEX `IX_FimContractAdditional_ContractSigningreferenceId`(`ContractSigningreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FimEntityLocationMapping` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `typeOfOwnership` TEXT NULL,
    `storeOwnedPercentage` TEXT NULL,
    `EntityreferenceId` BIGINT NULL,

    INDEX `IX_FimEntityLocationMapping_EntityreferenceId`(`EntityreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Financial` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `_middleName1162330766` TEXT NULL,
    `fimRrFinancialStatement` TEXT NULL,
    `fimTtCashRevenue` TEXT NULL,
    `fimTtLastName` TEXT NULL,
    `fimTtNoteRevenue` TEXT NULL,
    `fimRrFinanceApproved` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `fimTtFranchiseeFee` TEXT NULL,
    `fimCbtContactTitle` TEXT NULL,
    `fimFinancial0` TEXT NULL,
    `fimTtFirstName` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Franchisee` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `country` TEXT NULL,
    `city` TEXT NULL,
    `franchiseeName` TEXT NULL,
    `storeTypeId` TEXT NULL,
    `_enterpriseName1124775989` TEXT NULL,
    `transferDate` TEXT NULL,
    `storeStatus` TEXT NULL,
    `_distributorLicenseNumber2023869614` TEXT NULL,
    `versionID` TEXT NULL,
    `areaID` TEXT NULL,
    `storePhone` TEXT NULL,
    `_customerAccountNumber1215412729` TEXT NULL,
    `state` TEXT NULL,
    `grandStoreOpeningDate` TEXT NULL,
    `taxRateId` TEXT NULL,
    `openingDate` TEXT NULL,
    `lastAttended` TEXT NULL,
    `_licenseBrand2012129995` TEXT NULL,
    `emailID` TEXT NULL,
    `transactionType` TEXT NULL,
    `_enterpriseNumber1691878038` TEXT NULL,
    `lastUpdate` TEXT NULL,
    `reportPeriodStartDate` TEXT NULL,
    `storeEmail` TEXT NULL,
    `franchiseeStatus` TEXT NULL,
    `_services1273437941` TEXT NULL,
    `status` TEXT NULL,
    `centerName` TEXT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Mail` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `mailSubject` TEXT NULL,
    `lastOpened` TEXT NULL,
    `mailTo` TEXT NULL,
    `mailBcc` TEXT NULL,
    `mailFrom` TEXT NULL,
    `openingDate` TEXT NULL,
    `mailDate` TEXT NULL,
    `mailCc` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Owner` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `typeOfOwnership` TEXT NULL,
    `isManager` TEXT NULL,
    `ownershipStartDate` TEXT NULL,
    `storeOwnedPercentage` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PromissoryNote` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `promissoryNotePrepared` TEXT NULL,
    `_reportPeriod1085632444` TEXT NULL,
    `promissoryFinalPaymentDated` TEXT NULL,
    `termBased` TEXT NULL,
    `planFinalPaymentDated` TEXT NULL,
    `downPaymentAmount` TEXT NULL,
    `balanceAmount` TEXT NULL,
    `principalAmount` TEXT NULL,
    `timeFrame` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `amountInvoiced` TEXT NULL,
    `amountPaid` TEXT NULL,
    `paymentPlanAmount` TEXT NULL,
    `annualInterestRate` TEXT NULL,
    `downPayment` TEXT NULL,
    `promissoryNoteName` TEXT NULL,
    `monthlyPaymentAmount` TEXT NULL,
    `category` TEXT NULL,
    `downPaymentStatus` TEXT NULL,
    `startDate` TEXT NULL,
    `promissoryNoteDated` TEXT NULL,
    `status` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Renewal` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `_renewalFeeInvoiceNumber710907960` TEXT NULL,
    `_ownershipChangeNew499786019` TEXT NULL,
    `_currentStatusDummy1438168349` TEXT NULL,
    `fimCbCurrentStatus` TEXT NULL,
    `_dateAgreementSignedByFranchisee1844365169` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `fimDdNewExpirationDate` TEXT NULL,
    `_versionOfFdd62993460` TEXT NULL,
    `_renewalFeeAmount1569283816` TEXT NULL,
    `_franchiseeApprovalStatus1893442058` TEXT NULL,
    `_dateEntityChangefddDisclosureSent1321125445` TEXT NULL,
    `fimDdAsOf` TEXT NULL,
    `_renewalFeesNeededNew105914599` TEXT NULL,
    `_dateExecutedAgreementEmailedToFranchise142678684` TEXT NULL,
    `_dateFddSigned1524103858` TEXT NULL,
    `_renewalFeesInvoiceDateSentNew1720934182` TEXT NULL,
    `_dateAgreementSentForSignature104281524` TEXT NULL,
    `_compliantForRenewal2079893133` TEXT NULL,
    `_dateOwnershipChangeApproved1358366771` TEXT NULL,
    `_franchiseSpecialistEmail2057111456` TEXT NULL,
    `fimTaNotes` TEXT NULL,
    `_ownershipChangeReviewNew1235377795` TEXT NULL,
    `fimCbOtherCurrentStatus` TEXT NULL,
    `_dateRenewalFeesPaidNew300358608` TEXT NULL,
    `_datePreviewAgreementReceivedByFranchise3979663` TEXT NULL,
    `_complianceNotes117026493` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SupportStructure` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `lastUpdated` TEXT NULL,
    `_licenseBrand1844909088` TEXT NULL,
    `_teamCoordinator760397025` TEXT NULL,
    `_bdcContactEmail940731256` TEXT NULL,
    `_bddareaManager772394745` TEXT NULL,
    `_bdc1769435179` TEXT NULL,
    `_licenseSupportedByBrand371347950` TEXT NULL,
    `_srDirector2102278847` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Termination` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `_marquetteGroupBalanceDue1599611155` TEXT NULL,
    `fimCbTypeOfAction` TEXT NULL,
    `_priorYearRevenue1179248146` TEXT NULL,
    `_bdcComments2121396830` TEXT NULL,
    `_pursueFutureFees1929620554` TEXT NULL,
    `_dischargeOfDebtor1805686057` TEXT NULL,
    `fimDdActionDate` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `_sbaLenderNotified730710508` TEXT NULL,
    `fimTtAmount` TEXT NULL,
    `_noticeOfTermLetterSent1313019150` TEXT NULL,
    `_attorneyName1009405366` TEXT NULL,
    `_isTheSmacBalanceInCollections1935946120` TEXT NULL,
    `fimTtCaseBk` TEXT NULL,
    `fimTtCollectionAgency` TEXT NULL,
    `fimDdTerminatedDate` TEXT NULL,
    `fimDdCuredDate` TEXT NULL,
    `_reaffirmationDateConfirmed1614381063` TEXT NULL,
    `fimCbReasonOther` TEXT NULL,
    `_hasTheFranchiseCompliedFullyWithTheQaRe268330589` TEXT NULL,
    `_terminationStatus1324060484` TEXT NULL,
    `_bddApproved1107366834` TEXT NULL,
    `fimOtherBankruptcyType` TEXT NULL,
    `fimCbEntityClaimingBk` TEXT NULL,
    `_vpOfOperationsApproved936553532` TEXT NULL,
    `_auditDateYear2104336254` TEXT NULL,
    `_smacBalance385601723` TEXT NULL,
    `fimCbReason` TEXT NULL,
    `_unreportedRoyaltyLateFees1484096779` TEXT NULL,
    `_doesTheFranchiseHaveACurrentContract1824079340` TEXT NULL,
    `fimCbBankruptcyType` TEXT NULL,
    `_bdcApproved1227683972` TEXT NULL,
    `fimTermination1` TEXT NULL,
    `fimTermination0` TEXT NULL,
    `_unreportedNationalAdMinimums1687776094` TEXT NULL,
    `_futureFeesDue1254906686` TEXT NULL,
    `_isTheFranchiseCompliantWithTellSmtellFm1280363080` TEXT NULL,
    `fimTaComments` TEXT NULL,
    `_claimedFiled839382262` TEXT NULL,
    `_pursueCollections374457009` TEXT NULL,
    `_reaffirmationDateSent303157679` TEXT NULL,
    `_conveAndONotYetBilledAmerispecOnly711147575` TEXT NULL,
    `fimDdApprovedDate` TEXT NULL,
    `_ifNoWhatIsTheCorrectAddress2032879341` TEXT NULL,
    `_rescindDate535723028` TEXT NULL,
    `_isTheFranchiseUnderAudit2141160435` TEXT NULL,
    `_dateBankruptcyFiled1267633270` TEXT NULL,
    `_isTheMarquetteGroupBalanceInCollections1100253240` TEXT NULL,
    `fimTtName2` TEXT NULL,
    `fimTtName1` TEXT NULL,
    `_attorneyContactInformation1389163789` TEXT NULL,
    `fimDdFollowUpDate` TEXT NULL,
    `fimTerminationdoc0` TEXT NULL,
    `_unreportedRoyaltyMinimums62321260` TEXT NULL,
    `_ifYesListMonthyearOfNrs316102697` TEXT NULL,
    `_isTheFranchiseCompliantWithInsurance607386885` TEXT NULL,
    `_doesTheFranchiseHaveLiveAnsweringAsRequ1940671819` TEXT NULL,
    `_currentYtdRevenue369859587` TEXT NULL,
    `_doesTheFranchisePurchaseProductsequipme913464049` TEXT NULL,
    `_dateOfDischarge474851939` TEXT NULL,
    `fimDdEffectiveActionDate` TEXT NULL,
    `fimTtLiquidatedDamages` TEXT NULL,
    `fimRrRepresentative` TEXT NULL,
    `_dateOfTerminationNotForFieldUse914137949` TEXT NULL,
    `_jdeAmountDueAsOf397894002` TEXT NULL,
    `_areThereAnyNrsForTheLicense82788446` TEXT NULL,
    `_auditSpecialistComments1638285021` TEXT NULL,
    `_jdeAmountDue1293269767` TEXT NULL,
    `_isTheAddressOnFileInFimLicenseInfoTabCo630197666` TEXT NULL,
    `_collectionsAgency1816414527` TEXT NULL,
    `fimRrBankruptcy` TEXT NULL,
    `_terminationLetterReceivedAmsOnly1098342765` TEXT NULL,
    `fimTtCollected` TEXT NULL,
    `_reaffirmationAgreement795615262` TEXT NULL,
    `_caseNumber1269439548` TEXT NULL,
    `_cooApproved696883274` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Territory` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `fimTtSalesRequirement` TEXT NULL,
    `fimTtLocation` TEXT NULL,
    `fimTtCounty` TEXT NULL,
    `fimTtZip` TEXT NULL,
    `fimTtTypeTerritory` TEXT NULL,
    `fimTaNotes` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `_territoryDescription221093710` TEXT NULL,
    `fimTtGeoCoordinates` TEXT NULL,
    `fimTtZipLocator` TEXT NULL,
    `syncCheckBox` TEXT NULL,
    `fimTtZipLocatorIdentical` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `__EFMigrationsHistory` (
    `MigrationId` VARCHAR(150) NOT NULL,
    `ProductVersion` VARCHAR(32) NOT NULL,

    PRIMARY KEY (`MigrationId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Agreement` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `fimTtPreviousLicenseNumber` TEXT NULL,
    `fimTaComments` TEXT NULL,
    `fimDdDateExecuted` TEXT NULL,
    `fimLicenseAgreement0` TEXT NULL,
    `_constructionGrandfatherNotes1452571739` TEXT NULL,
    `_contractLength1253742146` TEXT NULL,
    `fimDdApprovedDate` TEXT NULL,
    `_constructionGrandfatherDateAdded15864853` TEXT NULL,
    `_miscellaneous2033967498` TEXT NULL,
    `fimDdExpirationDate` TEXT NULL,
    `fimDdClosingDate` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `_constructionAddendum1567028247` TEXT NULL,
    `_constructionGrandfather71954091` TEXT NULL,
    `_miscellaneousAddedDate345281370` TEXT NULL,
    `_constructionAddendumDateAdded579433813` TEXT NULL,
    `_constructionAddendum11166680038` TEXT NULL,
    `_constructionAddendumNotes971483328` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `AgreementContactDetailsAddress` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `zipcode` TEXT NULL,
    `country` TEXT NULL,
    `emailIds` TEXT NULL,
    `extn` TEXT NULL,
    `address` TEXT NULL,
    `faxNumbers` TEXT NULL,
    `mobileNumbers` TEXT NULL,
    `city` TEXT NULL,
    `state` TEXT NULL,
    `phoneNumbers` TEXT NULL,
    `AgreementreferenceId` BIGINT NULL,

    INDEX `IX_AgreementContactDetailsAddress_AgreementreferenceId`(`AgreementreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `EntityDetailAddress` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `zipcode` TEXT NULL,
    `country` TEXT NULL,
    `emailIds` TEXT NULL,
    `extn` TEXT NULL,
    `address` TEXT NULL,
    `faxNumbers` TEXT NULL,
    `mobileNumbers` TEXT NULL,
    `city` TEXT NULL,
    `state` TEXT NULL,
    `phoneNumbers` TEXT NULL,
    `EntityreferenceId` BIGINT NULL,

    INDEX `IX_EntityDetailAddress_EntityreferenceId`(`EntityreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FimEmployeesMapping` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `EmployeereferenceId` BIGINT NULL,

    INDEX `IX_FimEmployeesMapping_EmployeereferenceId`(`EmployeereferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FranchiseeFimEntity` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `fimCbEntityType` TEXT NULL,
    `fimCbCountryOfFormation` TEXT NULL,
    `fimTtEntityName` TEXT NULL,
    `fimTtTaxpayer` TEXT NULL,
    `fimCbStateOfFormation` TEXT NULL,
    `FranchiseereferenceId` BIGINT NULL,

    INDEX `IX_FranchiseeFimEntity_FranchiseereferenceId`(`FranchiseereferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FranchiseeFimOwner` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `firstName` TEXT NULL,
    `lastName` TEXT NULL,
    `ownerTitle` TEXT NULL,
    `muidValue` TEXT NULL,
    `FranchiseereferenceId` BIGINT NULL,

    INDEX `IX_FranchiseeFimOwner_FranchiseereferenceId`(`FranchiseereferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Insdoc` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `_insuranceType463600951` TEXT NULL,
    `_documentTitle2048545135` TEXT NULL,
    `EntityreferenceId` BIGINT NULL,

    INDEX `IX_Insdoc_EntityreferenceId`(`EntityreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `InsuranceDetail` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `_insuranceType492175645` TEXT NULL,
    `_expirationDate1758332938` TEXT NULL,
    `_complianceNotes26684990` TEXT NULL,
    `_compliantStatus2091874476` TEXT NULL,
    `_policyNumber1100011430` TEXT NULL,
    `EntityreferenceId` BIGINT NULL,

    INDEX `IX_InsuranceDetail_EntityreferenceId`(`EntityreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `LocationDetail` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `_country274603683` TEXT NULL,
    `_phoneExtension1270212794` TEXT NULL,
    `_dashlocation2085121690` TEXT NULL,
    `_streetAddress2810155978` TEXT NULL,
    `_stateProvince105415221` TEXT NULL,
    `_email1470516513` TEXT NULL,
    `_zipPostalCode1954302860` TEXT NULL,
    `_locationId1153808795` TEXT NULL,
    `_city1512122710` TEXT NULL,
    `_streetAddress1200549108` TEXT NULL,
    `_fax553453540` TEXT NULL,
    `_mobile931165842` TEXT NULL,
    `_phone1903185288` TEXT NULL,
    `_jdeLocationId926127678` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `NationalAccount` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `lastUpdated` TEXT NULL,
    `_accountName1104127104` TEXT NULL,
    `_accountServices1543744825` TEXT NULL,
    `_accountType751556397` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `OwnerFimOwner` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `lastName` TEXT NULL,
    `extn` TEXT NULL,
    `spousePhoneExtn` TEXT NULL,
    `spousePhone` TEXT NULL,
    `_disability132704557` TEXT NULL,
    `lastUpdated` TEXT NULL,
    `homeCity` TEXT NULL,
    `_veteranStatus1415451131` TEXT NULL,
    `fax` TEXT NULL,
    `email` TEXT NULL,
    `homeAddress` TEXT NULL,
    `_gender989429608` TEXT NULL,
    `muidValue` TEXT NULL,
    `mobile` TEXT NULL,
    `homeState` TEXT NULL,
    `spouseFirstName` TEXT NULL,
    `homeZipCode` TEXT NULL,
    `spouseLastName` TEXT NULL,
    `_ethnicity133631542` TEXT NULL,
    `firstName` TEXT NULL,
    `spouseMobile` TEXT NULL,
    `ownerTitle` TEXT NULL,
    `phone` TEXT NULL,
    `homeCountry` TEXT NULL,
    `remarks` TEXT NULL,
    `OwnerreferenceId` BIGINT NULL,

    INDEX `IX_OwnerFimOwner_OwnerreferenceId`(`OwnerreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TerminationAgencyAddress` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `zipcode` TEXT NULL,
    `country` TEXT NULL,
    `emailIds` TEXT NULL,
    `extn` TEXT NULL,
    `address` TEXT NULL,
    `faxNumbers` TEXT NULL,
    `mobileNumbers` TEXT NULL,
    `city` TEXT NULL,
    `state` TEXT NULL,
    `phoneNumbers` TEXT NULL,
    `TerminationreferenceId` BIGINT NULL,

    INDEX `IX_TerminationAgencyAddress_TerminationreferenceId`(`TerminationreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TerminationRepresentativeAddress` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `zipcode` TEXT NULL,
    `country` TEXT NULL,
    `emailIds` TEXT NULL,
    `extn` TEXT NULL,
    `address` TEXT NULL,
    `faxNumbers` TEXT NULL,
    `mobileNumbers` TEXT NULL,
    `city` TEXT NULL,
    `state` TEXT NULL,
    `phoneNumbers` TEXT NULL,
    `TerminationreferenceId` BIGINT NULL,

    INDEX `IX_TerminationRepresentativeAddress_TerminationreferenceId`(`TerminationreferenceId`),
    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TerritoryZipCode` (
    `referenceId` BIGINT NOT NULL AUTO_INCREMENT,
    `_contractualTerritory923687110` TEXT NULL,
    `_qrvSecondary723049387` TEXT NULL,
    `_crtSecondary78712761` TEXT NULL,
    `_rxnaSecondary611675604` TEXT NULL,
    `_srmPrimary261449920` TEXT NULL,
    `_vipPrimary1545320295` TEXT NULL,
    `_rxnaPrimary612118522` TEXT NULL,
    `_qrvprimary1658881347` TEXT NULL,
    `_sppPrimary881807340` TEXT NULL,
    `_crtPrimary764190058` TEXT NULL,
    `CenterInfoId` BIGINT NOT NULL,

    PRIMARY KEY (`referenceId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `BillingContactDetailsAddress` ADD CONSTRAINT `FK_BillingContactDetailsAddress_Financial_FinancialreferenceId` FOREIGN KEY (`FinancialreferenceId`) REFERENCES `Financial`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `FimContractAdditional` ADD CONSTRAINT `FK_FimContractAdditional_ContractSigning_ContractSigningreferen~` FOREIGN KEY (`ContractSigningreferenceId`) REFERENCES `ContractSigning`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `FimEntityLocationMapping` ADD CONSTRAINT `FK_FimEntityLocationMapping_Entity_EntityreferenceId` FOREIGN KEY (`EntityreferenceId`) REFERENCES `Entity`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `AgreementContactDetailsAddress` ADD CONSTRAINT `FK_AgreementContactDetailsAddress_Agreement_AgreementreferenceId` FOREIGN KEY (`AgreementreferenceId`) REFERENCES `Agreement`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `EntityDetailAddress` ADD CONSTRAINT `FK_EntityDetailAddress_Entity_EntityreferenceId` FOREIGN KEY (`EntityreferenceId`) REFERENCES `Entity`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `FimEmployeesMapping` ADD CONSTRAINT `FK_FimEmployeesMapping_Employee_EmployeereferenceId` FOREIGN KEY (`EmployeereferenceId`) REFERENCES `Employee`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `FranchiseeFimEntity` ADD CONSTRAINT `FK_FranchiseeFimEntity_Franchisee_FranchiseereferenceId` FOREIGN KEY (`FranchiseereferenceId`) REFERENCES `Franchisee`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `FranchiseeFimOwner` ADD CONSTRAINT `FK_FranchiseeFimOwner_Franchisee_FranchiseereferenceId` FOREIGN KEY (`FranchiseereferenceId`) REFERENCES `Franchisee`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `Insdoc` ADD CONSTRAINT `FK_Insdoc_Entity_EntityreferenceId` FOREIGN KEY (`EntityreferenceId`) REFERENCES `Entity`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `InsuranceDetail` ADD CONSTRAINT `FK_InsuranceDetail_Entity_EntityreferenceId` FOREIGN KEY (`EntityreferenceId`) REFERENCES `Entity`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `OwnerFimOwner` ADD CONSTRAINT `FK_OwnerFimOwner_Owner_OwnerreferenceId` FOREIGN KEY (`OwnerreferenceId`) REFERENCES `Owner`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `TerminationAgencyAddress` ADD CONSTRAINT `FK_TerminationAgencyAddress_Termination_TerminationreferenceId` FOREIGN KEY (`TerminationreferenceId`) REFERENCES `Termination`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- AddForeignKey
ALTER TABLE `TerminationRepresentativeAddress` ADD CONSTRAINT `FK_TerminationRepresentativeAddress_Termination_Terminationrefe~` FOREIGN KEY (`TerminationreferenceId`) REFERENCES `Termination`(`referenceId`) ON DELETE RESTRICT ON UPDATE RESTRICT;
