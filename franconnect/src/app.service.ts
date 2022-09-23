/* eslint-disable @typescript-eslint/no-unused-vars */
import { HttpService } from '@nestjs/axios';
import { Injectable } from '@nestjs/common';
import { PrismaService } from './database/prisma.service';

import axios from 'axios';

@Injectable()
export class AppService {
  constructor(
    private prisma: PrismaService,
    private httpService: HttpService,
  ) {}

  async getHello(): Promise<string> {
    // const ret = await prisma.signe.findMany({
    //         where: {
    //             id: { in: [1, 2, 12] },
    //         }
    //     })

    const config = {
      method: 'post',

      url: 'https://smcsky.franconnectuat.net/fc/rest/dataservices/retrieve?module=fim&subModule=agreement&responseType=JSON&filterXML=<fcRequest><filter><lastUpdateFrom>09/12/2022</lastUpdateFrom><lastUpdateTo>09/12/2022</lastUpdateTo></filter></fcRequest>',

      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',

        Authorization:
          'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHBpcmUtZGF0ZSI6IjIwMjItMDktMjRUMDI6MzE6NDIuNTI5WiIsIlgtVGVuYW50SUQiOiJzbWNza3kuZnJhbmNvbm5lY3R1YXQubmV0Iiwic2NvcGUiOlsib3BlbmlkIiwiYWxsIl0sImV4cCI6MTY2Mzk4NjcwMiwianRpIjoiMjRPM21TZkVmOVJKTGk0ZmdLOU1kVVFINDljIiwiY2xpZW50X2lkIjoic21jc2t5YXBpIn0.MGTQU4uJdb2qyPpoUaaq-4te97Eokf7uwEz-5kMFz_CSFKdDL2mXG_Sj14xBjxflBghvlZ8FEcA8vYFvpSKgwWa4USbfz5zB7yyyzeMnX6AJhjOBKDbY7ATOaZBlGkaoJcnlvAyUhxN9ppTlVCcp_irdo7UgyicskJ2q2rTcUpxyxLq_aS8zCNnEPjTCfZEzdd-Fmrk73CWrD0lQXpqZhcEWX_zMUbNbmIzPF7hSI0cz7WGvLMaUvLGoGA4aYi1m3fVU_3u2uzBSNi9xKtDXzdF5BkYTnCKlVNVYhlP_HxrDV8mm_rz2X449L4vuwVY_pLDtik8keSI7pV0N3f2AoQ',

        Cookie:
          'JSESSIONID=954615DB9E8359A687241DD396EA9F79; JSESSIONID=2DC474E4F009E3F5809041D023F45497',
      },
    };

    const response = await axios(config);
    const { fcResponse } = response.data;

    const items = fcResponse.responseData.fimCenterInfo;

    const data = items
      .map((resp) => ({
        CenterInfoId: BigInt(resp.referenceId),
        fimTtPreviousLicenseNumber: '123456',
        fimTaComments: resp.fimTaComments,
        fimDdDateExecuted: resp.fimDdDateExecuted,
        fimLicenseAgreement0: resp.fimLicenseAgreement0,
        constructionGrandfatherNotes1452571739:
          resp.constructionGrandfatherNotes1452571739,
        contractLength1253742146: resp.contractLength1253742146,
        fimDdApprovedDate: resp.fimDdApprovedDate,
        constructionGrandfatherDateAdded15864853:
          resp.constructionGrandfatherDateAdded15864853,
        miscellaneous2033967498: resp.miscellaneous2033967498,
        fimDdExpirationDate: resp.fimDdExpirationDate,
        fimDdClosingDate: resp.fimDdClosingDate,
        lastUpdated: resp.lastUpdated,
        constructionAddendum1567028247: resp.constructionAddendum1567028247,
        constructionGrandfather71954091: resp.constructionGrandfather71954091,
        miscellaneousAddedDate345281370: resp.miscellaneousAddedDate345281370,
        constructionAddendumDateAdded579433813:
          resp.constructionAddendumDateAdded579433813,
        constructionAddendum11166680038: resp.constructionAddendum11166680038,
        constructionAddendumNotes971483328:
          resp.constructionAddendumNotes971483328,
        CenterInfoReferenceId: BigInt(resp.referenceId),
      }))
      .map((s) => {
        for (const i in s) if (!s[i]) s[i] = '';
        return s;
      });

    const ret = await this.prisma.agreement.createMany({
      data,
    });

    console.log(ret);
    // items.map(async (resp) => {
    //   if (resp.referenceId) {
    //     const foundAgreement = await this.prisma.agreement.findFirst({
    //       where: {
    //         CenterInfoId: BigInt(resp.referenceId),
    //       },
    //     });

    //     if (!foundAgreement) {
    //       await this.prisma.agreement.create({
    //         data: {
    // CenterInfoId: BigInt(resp.referenceId),
    // fimTtPreviousLicenseNumber: '123456',
    // fimTaComments: resp.fimTaComments,
    // fimDdDateExecuted: resp.fimDdDateExecuted,
    // fimLicenseAgreement0: resp.fimLicenseAgreement0,
    // constructionGrandfatherNotes1452571739:
    //   resp.constructionGrandfatherNotes1452571739,
    // contractLength1253742146: resp.contractLength1253742146,
    // fimDdApprovedDate: resp.fimDdApprovedDate,
    // constructionGrandfatherDateAdded15864853:
    //   resp.constructionGrandfatherDateAdded15864853,
    // miscellaneous2033967498: resp.miscellaneous2033967498,
    // fimDdExpirationDate: resp.fimDdExpirationDate,
    // fimDdClosingDate: resp.fimDdClosingDate,
    // lastUpdated: resp.lastUpdated,
    // constructionAddendum1567028247:
    //   resp.constructionAddendum1567028247,
    // constructionGrandfather71954091:
    //   resp.constructionGrandfather71954091,
    // miscellaneousAddedDate345281370:
    //   resp.miscellaneousAddedDate345281370,
    // constructionAddendumDateAdded579433813:
    //   resp.constructionAddendumDateAdded579433813,
    // constructionAddendum11166680038:
    //   resp.constructionAddendum11166680038,
    // constructionAddendumNotes971483328:
    //   resp.constructionAddendumNotes971483328,
    // CenterInfoReferenceId: BigInt(resp.referenceId),
    //         },
    //       });
    //     }
    //   }
    // });

    return 'Hello World!';
  }

  async getPotatoe(): Promise<string> {
    const config = {
      method: 'post',

      url: 'https://smcsky.franconnectuat.net/fc/rest/dataservices/retrieve?module=fim&subModule=centerInfo&responseType=JSON&filterXML=<fcRequest><filter><lastUpdateFrom>08/12/2022</lastUpdateFrom><lastUpdateTo>09/12/2022</lastUpdateTo></filter></fcRequest>',

      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',

        Authorization: 'Bearer xxx',

        Cookie: 'XXX',
      },
    };

    const resp = await axios(config);

    const items = resp.data.fcResponse.responseData.fimCenterInfo;

    items.map(async (purur) => {
      const findItem = await this.prisma.centerInfo.findFirst({
        where: {
          ReferenceId: BigInt(purur.ReferenceId),
        },
      });

      if (!findItem) {
        await this.prisma.centerInfo.create({
          data: {
            ReferenceId: Number(purur.referenceId),
            country: purur.country,
            city: purur.city,
            franchiseeName: purur.franchiseeName,
            storeTypeId: purur.storeTypeId,
            transferDate: purur.transferDate,
            storeStatus: purur.storeStatus,
            distributorLicenseNumber2023869614:
              purur.distributorLicenseNumber2023869614,
            versionID: purur.versionID,
            areaID: purur.areaID,
            storePhone: purur.storePhone,
            customerAccountNumber1215412729:
              purur.customerAccountNumber1215412729,
            state: purur.state,
            grandStoreOpeningDate: purur.grandStoreOpeningDate,
            taxRateId: purur.taxRateId,
            openingDate: purur.openingDate,
            lastAttended: purur.lastAttended,
            licenseBrand2012129995: purur.licenseBrand2012129995,
            emailID: purur.emailID,
            transactionType: purur.transactionType,
            enterpriseNumber1691878038: purur.enterpriseNumber1691878038,
            lastUpdate: purur.lastUpdate,
            reportPeriodStartDate: purur.reportPeriodStartDate,
            storeEmail: purur.storeEmail,
            franchiseeStatus: purur.franchiseeStatus,
            services1273437941: purur.services1273437941,
            status: purur.status,
            centerName: purur.centerName,
          },
        });
      }
    });

    return 'Potatoe';
  }
}
