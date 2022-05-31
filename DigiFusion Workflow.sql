CREATE TABLE `motorclaims` (
  `id` int PRIMARY KEY NOT NULL,
  `workproviderclaimtypeid` int NOT NULL,
  `priority` varchar(10) NOT NULL,
  `claimno` varchar(500) NOT NULL,
  `policyno` varchar(500) NOT NULL,
  `vehiclemanufacturer` varchar(500) NOT NULL,
  `vehiclemodel` varchar(500) NOT NULL,
  `vehiclecolor` varchar(500) NOT NULL,
  `vehicleyear` varchar(500) NOT NULL,
  `vehicleregno` varchar(500) NOT NULL,
  `vehiclevinno` varchar(500) NOT NULL,
  `vehicleengineno` varchar(500) NOT NULL,
  `vehiclepainttype` varchar(500) NOT NULL,
  `vehicleodometer` varchar(500) NOT NULL,
  `vehicletype` varchar(500) NOT NULL,
  `vehiclewarranty` varchar(10) NOT NULL,
  `vehiclelocation` varchar(500) NOT NULL,
  `vehicledrivabletype` varchar(10) NOT NULL,
  `insuredtitle` varchar(500) NOT NULL,
  `insuredfirstname` varchar(500) NOT NULL,
  `insuredlastname` varchar(500) NOT NULL,
  `insuredcontactnos` longtext NOT NULL,
  `insuredemails` longtext NOT NULL,
  `insuredcommmethod` varchar(10) NOT NULL,
  `dateofloss` date NOT NULL,
  `accidentdesc` longtext NOT NULL,
  `incidentlocationc` longtext NOT NULL,
  `assessmentno` varchar(500) NOT NULL,
  `originator` varchar(500) NOT NULL,
  `audaconnectid` varchar(500) NOT NULL,
  `insuredsum` double NOT NULL,
  `deductions` longtext NOT NULL,
  `deductionsvalidated` varchar(10) NOT NULL,
  `claimshandlerid` int NOT NULL,
  `adminid` int NOT NULL,
  `assessorid` int NOT NULL,
  `partssourcerid` int NOT NULL,
  `repairerid` int NOT NULL,
  `invoiceid` int NOT NULL,
  `vat` int NOT NULL,
  `quotedamt` double NOT NULL,
  `assessedamt` double NOT NULL,
  `frcamt` double NOT NULL,
  `assessorinstruction` longtext NOT NULL,
  `policynotes` longtext NOT NULL,
  `fairandreasonable` datetime NOT NULL,
  `fairandreasonablereason` longtext NOT NULL,
  `cancelled` datetime NOT NULL,
  `cancelledreason` longtext NOT NULL,
  `hold` datetime NOT NULL,
  `holdreason` longtext NOT NULL,
  `sentinternal` datetime NOT NULL,
  `sentinternalreason` longtext NOT NULL,
  `adminlastactioned` datetime NOT NULL,
  `assessorlastactioned` datetime NOT NULL,
  `workproviderlastactioned` datetime NOT NULL,
  `insuredlastactioned` datetime NOT NULL,
  `repairerlastactioned` datetime NOT NULL,
  `supplierlastactioned` datetime NOT NULL,
  `repairduration` varchar(500) NOT NULL,
  `marketvalue` double NOT NULL,
  `retailvalue` double NOT NULL,
  `tradevalue` double NOT NULL,
  `mmcode` varchar(500) NOT NULL,
  `remarks` longtext NOT NULL,
  `salvageref` varchar(500) NOT NULL,
  `tyres` longtext NOT NULL,
  `thirdparty` varchar(10) NOT NULL DEFAULT "N",
  `thirdpartyinsurance` varchar(500) NOT NULL,
  `thirdpartyname` varchar(500) NOT NULL,
  `thirdpartycontactnos` longtext NOT NULL,
  `thirdpartyemails` longtext NOT NULL,
  `thirdpartyvehicle` varchar(500) NOT NULL,
  `thirdpartyvehicleregno` varchar(500) NOT NULL,
  `thirdpartyvehiclevinno` varchar(500) NOT NULL
);

CREATE TABLE `motortimestamps` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `step` int NOT NULL,
  `stamped` datetime NOT NULL
);

CREATE TABLE `motorclaimsnotes` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `digiteks` varchar(10) NOT NULL DEFAULT "N",
  `insurance` varchar(10) NOT NULL DEFAULT "N",
  `broker` varchar(10) NOT NULL DEFAULT "N",
  `insured` varchar(10) NOT NULL DEFAULT "N",
  `repairer` varchar(10) NOT NULL DEFAULT "N",
  `supplier` varchar(10) NOT NULL DEFAULT "N",
  `timstampuploaded` datetime,
  `userid` int NOT NULL
);

CREATE TABLE `motorclaimsmobile` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `userid` int NOT NULL,
  `datesceduled` varchar(500) NOT NULL,
  `timescheduled` varchar(500) NOT NULL,
  `notes` longtext NOT NULL,
  `odometerstart` int NOT NULL,
  `odometerend` int NOT NULL,
  `distancetraveled` int NOT NULL
);

CREATE TABLE `motorassessment` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `version` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `partno` varchar(500) NOT NULL,
  `supplier` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `qty` int NOT NULL,
  `partprice` double NOT NULL,
  `markup` int NOT NULL,
  `labour` double NOT NULL,
  `stripassemble` double NOT NULL,
  `paint` double NOT NULL,
  `other` double NOT NULL,
  `additional` varchar(10) NOT NULL,
  `additionalauth` varchar(10) NOT NULL
);

CREATE TABLE `motorcommunication` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `timesent` datetime NOT NULL,
  `useridfrom` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `useridto` int NOT NULL,
  `message` varchar(500) NOT NULL
);

CREATE TABLE `motornotifications` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `timesent` datetime NOT NULL,
  `useridfrom` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `useridto` int NOT NULL,
  `message` varchar(500) NOT NULL,
  `read` datetime NOT NULL
);

CREATE TABLE `motorreminders` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `requestedon` datetime NOT NULL,
  `userid` int NOT NULL,
  `notifyon` datetime NOT NULL,
  `notes` longtext NOT NULL,
  `completed` datetime NOT NULL
);

CREATE TABLE `motordigipartsprocess` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `description` varchar(500) NOT NULL,
  `partno` varchar(100) NOT NULL,
  `abuntexprice` double NOT NULL,
  `abuntexmarkup` double NOT NULL,
  `abuntexguideno` varchar(100) NOT NULL,
  `allocatetype` varchar(45) NOT NULL,
  `submittedtimestamp` datetime NOT NULL,
  `supplieroemid` int(11) NOT NULL,
  `supplieroemquote` double NOT NULL,
  `supplieroemselected` varchar(10) NOT NULL DEFAULT "N",
  `supplieroemquotetimestamp` datetime NOT NULL,
  `supplieralt1id` int(11) NOT NULL,
  `supplieralt1quote` double NOT NULL,
  `supplieralt1selected` varchar(10) NOT NULL DEFAULT "N",
  `supplieralt1quotetimestamp` datetime NOT NULL,
  `supplieralt2id` int(11) NOT NULL,
  `supplieralt2quote` double NOT NULL,
  `supplieralt2selected` varchar(10) NOT NULL DEFAULT "N",
  `supplieralt2quotetimestamp` datetime NOT NULL,
  `supplieralt3id` int(11) NOT NULL,
  `supplieralt3quote` double NOT NULL,
  `supplieralt3selected` varchar(10) NOT NULL DEFAULT "N",
  `supplieralt3quotetimestamp` datetime NOT NULL,
  `manualsupplier` varchar(500) NOT NULL,
  `manualquote` double NOT NULL,
  `partsorderrequest` varchar(10) NOT NULL,
  `partsorderrequestdate` date NOT NULL,
  `partsorderrequesttimestamp` datetime NOT NULL,
  `backorder` varchar(10) NOT NULL DEFAULT "N",
  `backorderdate` date NOT NULL,
  `backordertimestamp` datetime NOT NULL,
  `invoiceamt` double NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `partssenttimestamp` datetime NOT NULL,
  `partsaccept` datetime NOT NULL,
  `partsreject` datetime NOT NULL,
  `partsrejectreason` varchar(500) NOT NULL,
  `partsprocessedtimestamp` datetime NOT NULL,
  `partsprocesseddeclinedreason` varchar(500) NOT NULL
);

CREATE TABLE `motordigiquote` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `startamt` double NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `location` varchar(500) NOT NULL
);

CREATE TABLE `motordigiquotedetailed` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `repairerid` int NOT NULL,
  `version` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `partno` varchar(500) NOT NULL,
  `supplier` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `qty` int NOT NULL,
  `partprice` double NOT NULL,
  `markup` int NOT NULL,
  `labour` double NOT NULL,
  `stripassemble` double NOT NULL,
  `paint` double NOT NULL,
  `other` double NOT NULL,
  `additional` varchar(10) NOT NULL,
  `additionalrequestedon` datetime NOT NULL,
  `additionalauth` varchar(10) NOT NULL
);

CREATE TABLE `motordigiquotephotos` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `filelink` longtext NOT NULL
);

CREATE TABLE `motordigiquotesentlist` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `repairerid` int NOT NULL,
  `quoteaccept` datetime NOT NULL,
  `quotereject` datetime NOT NULL,
  `rejectreason` longtext NOT NULL
);

CREATE TABLE `motordigisalvage` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `startamt` double NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `location` varchar(500) NOT NULL
);

CREATE TABLE `motordigisalvagebids` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `submittedon` datetime NOT NULL,
  `userid` int NOT NULL,
  `value` double NOT NULL,
  `winner` varchar(10) NOT NULL
);

CREATE TABLE `nonmotorclaims` (
  `id` int PRIMARY KEY NOT NULL,
  `workproviderclaimtypeid` int NOT NULL,
  `priority` varchar(10) NOT NULL,
  `claimno` varchar(500) NOT NULL,
  `policyno` varchar(500) NOT NULL,
  `insuredtitle` varchar(500) NOT NULL,
  `insuredfirstname` varchar(500) NOT NULL,
  `insuredlastname` varchar(500) NOT NULL,
  `insuredcontactnos` longtext NOT NULL,
  `insuredemails` longtext NOT NULL,
  `insuredcommmethod` varchar(10) NOT NULL,
  `losstype` varchar(500) NOT NULL,
  `incidentdescription` longtext NOT NULL,
  `incidentlocation` longtext NOT NULL,
  `dateofloss` date NOT NULL,
  `insuredsum` double NOT NULL,
  `deductions` longtext NOT NULL,
  `deductionsvalidated` varchar(10) NOT NULL,
  `assessmentno` varchar(500) NOT NULL,
  `claimshandlerid` int NOT NULL,
  `adminid` int NOT NULL,
  `assessorid` int NOT NULL,
  `repairerid` int NOT NULL,
  `invoiceid` int NOT NULL,
  `vat` int NOT NULL,
  `assessorinstruction` longtext NOT NULL,
  `meritoginvestigation` longtext NOT NULL,
  `indemnity` longtext NOT NULL,
  `recommendedsettlement` longtext NOT NULL,
  `additionalnotes` longtext NOT NULL,
  `opennoteheading` varchar(500) NOT NULL,
  `opennotebody` longtext NOT NULL,
  `cancelled` datetime NOT NULL,
  `cancelledreason` longtext NOT NULL,
  `hold` datetime NOT NULL,
  `holdreason` longtext NOT NULL,
  `sentinternal` datetime NOT NULL,
  `sentinternalreason` longtext NOT NULL
);

CREATE TABLE `nonmotortimestamps` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `step` int NOT NULL,
  `stamped` datetime NOT NULL
);

CREATE TABLE `nonmotorclaimsnotes` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `digiteks` varchar(10) NOT NULL DEFAULT "N",
  `insurance` varchar(10) NOT NULL DEFAULT "N",
  `broker` varchar(10) NOT NULL DEFAULT "N",
  `insured` varchar(10) NOT NULL DEFAULT "N",
  `repairer` varchar(10) NOT NULL DEFAULT "N",
  `supplier` varchar(10) NOT NULL DEFAULT "N",
  `timstampuploaded` datetime,
  `userid` int NOT NULL
);

CREATE TABLE `nonmotorclaimsmobile` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `userid` int NOT NULL,
  `datesceduled` varchar(500) NOT NULL,
  `timescheduled` varchar(500) NOT NULL,
  `notes` longtext NOT NULL,
  `odometerstart` int NOT NULL,
  `odometerend` int NOT NULL,
  `distancetraveled` int NOT NULL
);

CREATE TABLE `nonmotorassessment` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `version` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `partno` varchar(500) NOT NULL,
  `supplier` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `qty` int NOT NULL,
  `unitprice` double NOT NULL,
  `additional` varchar(10) NOT NULL,
  `additionalauth` varchar(10) NOT NULL
);

CREATE TABLE `nonmotorcommunication` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `timesent` datetime NOT NULL,
  `useridfrom` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `useridto` int NOT NULL,
  `message` varchar(500) NOT NULL
);

CREATE TABLE `nonmotornotifications` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `timesent` datetime NOT NULL,
  `useridfrom` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `useridto` int NOT NULL,
  `message` varchar(500) NOT NULL,
  `read` datetime NOT NULL
);

CREATE TABLE `nonmotorreminders` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `requestedon` datetime NOT NULL,
  `userid` int NOT NULL,
  `notifyon` datetime NOT NULL,
  `notes` longtext NOT NULL,
  `completed` datetime NOT NULL
);

CREATE TABLE `workproviderclaimtype` (
  `id` int PRIMARY KEY NOT NULL,
  `workproviderid` int NOT NULL,
  `claimtypeid` int NOT NULL,
  `visibilitydigiteks` varchar(10) NOT NULL,
  `visibilityinsurance` varchar(10) NOT NULL,
  `visibilitybroker` varchar(10) NOT NULL,
  `visibilityinsured` varchar(10) NOT NULL,
  `visibilityrepairer` varchar(10) NOT NULL,
  `visibilitysupplier` varchar(10) NOT NULL,
  `visibilityserviceprovider` varchar(10) NOT NULL,
  `pricingstructure` longtext NOT NULL
);

CREATE TABLE `brokers` (
  `id` int PRIMARY KEY NOT NULL,
  `name` varchar(500) NOT NULL,
  `regno` varchar(500) NOT NULL,
  `vatno` varchar(500) NOT NULL,
  `contactnos` longtext NOT NULL,
  `physicaladdress` longtext NOT NULL,
  `postaladdress` longtext NOT NULL
);

CREATE TABLE `claimshandlers` (
  `id` int PRIMARY KEY NOT NULL,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) NOT NULL,
  `contactnos` longtext NOT NULL,
  `emailaddresses` longtext NOT NULL,
  `userid` int NOT NULL
);

CREATE TABLE `claimtypes` (
  `id` int PRIMARY KEY NOT NULL
);

CREATE TABLE `insurance` (
  `id` int PRIMARY KEY NOT NULL,
  `name` varchar(500) NOT NULL,
  `regno` varchar(500) NOT NULL,
  `vatno` varchar(500) NOT NULL,
  `contactnos` longtext NOT NULL,
  `physicaladdress` longtext NOT NULL,
  `postaladdress` longtext NOT NULL
);

CREATE TABLE `repairers` (
  `id` int PRIMARY KEY NOT NULL,
  `name` varchar(500) NOT NULL,
  `regno` varchar(500) NOT NULL,
  `vatno` varchar(500) NOT NULL,
  `contactnos` longtext NOT NULL,
  `emailaddresses` longtext NOT NULL,
  `physicaladdress` longtext NOT NULL,
  `province` varchar(500) NOT NULL,
  `coordinates` varchar(500) NOT NULL
);

CREATE TABLE `repairersclaimtype` (
  `id` int PRIMARY KEY NOT NULL,
  `repairerid` int NOT NULL,
  `claimtypeid` int NOT NULL
);

CREATE TABLE `repairersworkproviderid` (
  `id` int PRIMARY KEY NOT NULL,
  `repairerid` int NOT NULL,
  `wpid` int NOT NULL,
  `definition` varchar(500) NOT NULL,
  `wpgeneratedid` bigint NOT NULL
);

CREATE TABLE `repairerapprovals` (
  `id` int PRIMARY KEY NOT NULL,
  `repairerid` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `expirydate` date NOT NULL,
  `documentation` longtext NOT NULL
);

CREATE TABLE `serviceproviders` (
  `id` int PRIMARY KEY NOT NULL,
  `name` varchar(500) NOT NULL,
  `regno` varchar(500) NOT NULL,
  `vatno` varchar(500) NOT NULL,
  `contactnos` longtext NOT NULL,
  `emailaddresses` longtext NOT NULL,
  `physicaladdress` longtext NOT NULL,
  `province` varchar(500) NOT NULL,
  `coordinates` varchar(500) NOT NULL
);

CREATE TABLE `serviceprovidersclaimtype` (
  `id` int PRIMARY KEY NOT NULL,
  `serviceproviderid` int NOT NULL,
  `claimtypeid` int NOT NULL
);

CREATE TABLE `suppliers` (
  `id` int PRIMARY KEY NOT NULL
);

CREATE TABLE `workprovider` (
  `id` int PRIMARY KEY NOT NULL,
  `name` varchar(500) NOT NULL,
  `regno` varchar(500) NOT NULL,
  `vatno` varchar(500) NOT NULL,
  `contactnos` longtext NOT NULL,
  `emailaddress` longtext NOT NULL,
  `insuranceid` int NOT NULL,
  `brokerid` int NOT NULL,
  `pastelid` varchar(500) NOT NULL
);

CREATE TABLE `workprovider_dept` (
  `id` int PRIMARY KEY NOT NULL,
  `wpid` int NOT NULL,
  `name` varchar(500) NOT NULL
);

CREATE TABLE `workprovider_settings` (
  `id` int PRIMARY KEY NOT NULL,
  `wpid` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `value` varchar(500) NOT NULL
);

CREATE TABLE `workprovider_region` (
  `id` int PRIMARY KEY NOT NULL,
  `wpid` int NOT NULL,
  `name` varchar(500) NOT NULL
);

CREATE TABLE `invoices` (
  `id` int PRIMARY KEY NOT NULL,
  `claimid` int NOT NULL,
  `to` varchar(500) NOT NULL,
  `no` varchar(500) NOT NULL,
  `amount` double NOT NULL,
  `vat` int NOT NULL,
  `paid` varchar(10) NOT NULL
);

CREATE TABLE `users` (
  `id` int PRIMARY KEY NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `salt` varchar(500) NOT NULL,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `logintype` varchar(500) NOT NULL,
  `companyid` varchar(500) NOT NULL
);

CREATE TABLE `users_access` (
  `id` int PRIMARY KEY NOT NULL,
  `userid` int NOT NULL,
  `claimtypeid` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `value` varchar(500) NOT NULL
);

CREATE TABLE `users_settings` (
  `id` int PRIMARY KEY NOT NULL,
  `userid` int NOT NULL,
  `type` varchar(500) NOT NULL,
  `value` varchar(500) NOT NULL
);

CREATE TABLE `workprovider_claimshandler` (
  `id` int PRIMARY KEY NOT NULL,
  `wpid` int NOT NULL,
  `chid` int NOT NULL
);

CREATE TABLE `processflow` (
  `id` int PRIMARY KEY NOT NULL,
  `claimtypeid` int NOT NULL,
  `steporder` int NOT NULL,
  `processstepid` int NOT NULL
);

CREATE TABLE `processflowsteps` (
  `id` int PRIMARY KEY NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `actiontype` int NOT NULL,
  `design` longtext NOT NULL
);

CREATE TABLE `systemlogs` (
  `id` int PRIMARY KEY NOT NULL,
  `timestampchanged` datetime NOT NULL,
  `userid` int NOT NULL,
  `setting` varchar(500) NOT NULL,
  `value` varchar(500) NOT NULL
);

CREATE TABLE `messages` (
  `id` int PRIMARY KEY NOT NULL,
  `message` longtext NOT NULL,
  `useridfrom` int NOT NULL,
  `useridto` int NOT NULL,
  `created` datetime NOT NULL,
  `read` datetime NOT NULL
);

CREATE TABLE `api_received` (
  `id` int PRIMARY KEY NOT NULL,
  `timereceived` datetime NOT NULL,
  `userauth` longtext NOT NULL,
  `url` varchar(500) NOT NULL,
  `body` longtext NOT NULL,
  `auth` longtext NOT NULL,
  `response` longtext NOT NULL
);

CREATE TABLE `api_sent` (
  `id` int PRIMARY KEY NOT NULL,
  `timereceived` datetime NOT NULL,
  `userauth` longtext NOT NULL,
  `url` varchar(500) NOT NULL,
  `body` longtext NOT NULL,
  `auth` longtext NOT NULL,
  `response` longtext NOT NULL
);

ALTER TABLE `motorclaims` ADD FOREIGN KEY (`workproviderclaimtypeid`) REFERENCES `workproviderclaimtype` (`id`);

ALTER TABLE `motorclaims` ADD FOREIGN KEY (`claimshandlerid`) REFERENCES `claimshandlers` (`id`);

ALTER TABLE `motorclaims` ADD FOREIGN KEY (`repairerid`) REFERENCES `repairers` (`id`);

ALTER TABLE `motorclaims` ADD FOREIGN KEY (`invoiceid`) REFERENCES `invoices` (`id`);

ALTER TABLE `motorclaims` ADD FOREIGN KEY (`assessorid`) REFERENCES `users` (`id`);

ALTER TABLE `motorclaims` ADD FOREIGN KEY (`adminid`) REFERENCES `users` (`id`);

ALTER TABLE `workproviderclaimtype` ADD FOREIGN KEY (`workproviderid`) REFERENCES `workprovider` (`id`);

ALTER TABLE `workprovider` ADD FOREIGN KEY (`insuranceid`) REFERENCES `insurance` (`id`);

ALTER TABLE `workprovider` ADD FOREIGN KEY (`brokerid`) REFERENCES `brokers` (`id`);

ALTER TABLE `claimshandlers` ADD FOREIGN KEY (`id`) REFERENCES `workprovider_claimshandler` (`chid`);

ALTER TABLE `workprovider_claimshandler` ADD FOREIGN KEY (`wpid`) REFERENCES `workprovider` (`id`);

ALTER TABLE `workproviderclaimtype` ADD FOREIGN KEY (`claimtypeid`) REFERENCES `claimtypes` (`id`);

ALTER TABLE `processflow` ADD FOREIGN KEY (`claimtypeid`) REFERENCES `claimtypes` (`id`);

ALTER TABLE `processflow` ADD FOREIGN KEY (`processstepid`) REFERENCES `processflowsteps` (`id`);

ALTER TABLE `repairersclaimtype` ADD FOREIGN KEY (`id`) REFERENCES `repairers` (`id`);

ALTER TABLE `repairersclaimtype` ADD FOREIGN KEY (`claimtypeid`) REFERENCES `claimtypes` (`id`);

ALTER TABLE `serviceprovidersclaimtype` ADD FOREIGN KEY (`serviceproviderid`) REFERENCES `serviceproviders` (`id`);

ALTER TABLE `repairerapprovals` ADD FOREIGN KEY (`repairerid`) REFERENCES `repairers` (`id`);

ALTER TABLE `motorclaimsnotes` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motorclaimsnotes` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `workprovider_dept` ADD FOREIGN KEY (`wpid`) REFERENCES `workprovider` (`id`);

ALTER TABLE `workprovider_region` ADD FOREIGN KEY (`wpid`) REFERENCES `workprovider` (`id`);

ALTER TABLE `motorclaimsmobile` ADD FOREIGN KEY (`id`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `claimshandlers` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `workprovider_settings` ADD FOREIGN KEY (`id`) REFERENCES `workprovider` (`id`);

ALTER TABLE `systemlogs` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `users_settings` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `users_access` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `messages` ADD FOREIGN KEY (`useridfrom`) REFERENCES `users` (`id`);

ALTER TABLE `messages` ADD FOREIGN KEY (`useridto`) REFERENCES `users` (`id`);

ALTER TABLE `motorclaimsmobile` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `motorcommunication` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motornotifications` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motorassessment` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motorreminders` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `repairersworkproviderid` ADD FOREIGN KEY (`repairerid`) REFERENCES `repairers` (`id`);

ALTER TABLE `repairersworkproviderid` ADD FOREIGN KEY (`wpid`) REFERENCES `workprovider` (`id`);

ALTER TABLE `motordigisalvagebids` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motordigiquotephotos` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motordigiquotedetailed` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motordigipartsprocess` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motordigiquotesentlist` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motordigiquotesentlist` ADD FOREIGN KEY (`repairerid`) REFERENCES `repairers` (`id`);

ALTER TABLE `motordigiquotedetailed` ADD FOREIGN KEY (`repairerid`) REFERENCES `repairers` (`id`);

ALTER TABLE `nonmotorclaimsnotes` ADD FOREIGN KEY (`claimid`) REFERENCES `nonmotorclaims` (`id`);

ALTER TABLE `nonmotorcommunication` ADD FOREIGN KEY (`claimid`) REFERENCES `nonmotorclaims` (`id`);

ALTER TABLE `nonmotorreminders` ADD FOREIGN KEY (`claimid`) REFERENCES `nonmotorclaims` (`id`);

ALTER TABLE `nonmotornotifications` ADD FOREIGN KEY (`claimid`) REFERENCES `nonmotorclaims` (`id`);

ALTER TABLE `nonmotorassessment` ADD FOREIGN KEY (`claimid`) REFERENCES `nonmotorclaims` (`id`);

ALTER TABLE `nonmotorclaimsmobile` ADD FOREIGN KEY (`claimid`) REFERENCES `nonmotorclaims` (`id`);

ALTER TABLE `nonmotorclaimsnotes` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `nonmotorreminders` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `nonmotornotifications` ADD FOREIGN KEY (`useridfrom`) REFERENCES `users` (`id`);

ALTER TABLE `nonmotornotifications` ADD FOREIGN KEY (`useridto`) REFERENCES `users` (`id`);

ALTER TABLE `nonmotorcommunication` ADD FOREIGN KEY (`useridfrom`) REFERENCES `users` (`id`);

ALTER TABLE `nonmotorcommunication` ADD FOREIGN KEY (`useridto`) REFERENCES `users` (`id`);

ALTER TABLE `nonmotorclaimsmobile` ADD FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

ALTER TABLE `nonmotortimestamps` ADD FOREIGN KEY (`claimid`) REFERENCES `nonmotorclaims` (`id`);

ALTER TABLE `motortimestamps` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motordigisalvage` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);

ALTER TABLE `motordigiquote` ADD FOREIGN KEY (`claimid`) REFERENCES `motorclaims` (`id`);
