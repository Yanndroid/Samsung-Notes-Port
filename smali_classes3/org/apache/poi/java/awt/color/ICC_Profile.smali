.class public Lorg/apache/poi/java/awt/color/ICC_Profile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CLASS_ABSTRACT:I = 0x5

.field public static final CLASS_COLORSPACECONVERSION:I = 0x4

.field public static final CLASS_DEVICELINK:I = 0x3

.field public static final CLASS_DISPLAY:I = 0x1

.field public static final CLASS_INPUT:I = 0x0

.field public static final CLASS_NAMEDCOLOR:I = 0x6

.field public static final CLASS_OUTPUT:I = 0x2

.field private static GRAYprofile:Lorg/apache/poi/java/awt/color/ICC_Profile; = null

.field private static LINEAR_RGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile; = null

.field private static PYCCprofile:Lorg/apache/poi/java/awt/color/ICC_Profile; = null

.field private static XYZprofile:Lorg/apache/poi/java/awt/color/ICC_Profile; = null

.field public static final icAbsoluteColorimetric:I = 0x3

.field public static final icCurveCount:I = 0x8

.field public static final icCurveData:I = 0xc

.field public static final icHdrAttributes:I = 0x38

.field public static final icHdrCmmId:I = 0x4

.field public static final icHdrColorSpace:I = 0x10

.field public static final icHdrCreator:I = 0x50

.field public static final icHdrDate:I = 0x18

.field public static final icHdrDeviceClass:I = 0xc

.field public static final icHdrFlags:I = 0x2c

.field public static final icHdrIlluminant:I = 0x44

.field public static final icHdrMagic:I = 0x24

.field public static final icHdrManufacturer:I = 0x30

.field public static final icHdrModel:I = 0x34

.field public static final icHdrPcs:I = 0x14

.field public static final icHdrPlatform:I = 0x28

.field public static final icHdrProfileID:I = 0x54

.field public static final icHdrRenderingIntent:I = 0x40

.field public static final icHdrSize:I = 0x0

.field public static final icHdrVersion:I = 0x8

.field public static final icICCAbsoluteColorimetric:I = 0x3

.field public static final icMediaRelativeColorimetric:I = 0x1

.field public static final icPerceptual:I = 0x0

.field public static final icRelativeColorimetric:I = 0x1

.field public static final icSaturation:I = 0x2

.field public static final icSigAToB0Tag:I = 0x41324230

.field public static final icSigAToB1Tag:I = 0x41324231

.field public static final icSigAToB2Tag:I = 0x41324232

.field public static final icSigAbstractClass:I = 0x61627374

.field public static final icSigBToA0Tag:I = 0x42324130

.field public static final icSigBToA1Tag:I = 0x42324131

.field public static final icSigBToA2Tag:I = 0x42324132

.field public static final icSigBlueColorantTag:I = 0x6258595a

.field public static final icSigBlueMatrixColumnTag:I = 0x6258595a

.field public static final icSigBlueTRCTag:I = 0x62545243

.field public static final icSigCalibrationDateTimeTag:I = 0x63616c74

.field public static final icSigCharTargetTag:I = 0x74617267

.field public static final icSigChromaticAdaptationTag:I = 0x63686164

.field public static final icSigChromaticityTag:I = 0x6368726d

.field public static final icSigCmyData:I = 0x434d5920

.field public static final icSigCmykData:I = 0x434d594b

.field public static final icSigColorSpaceClass:I = 0x73706163

.field public static final icSigColorantOrderTag:I = 0x636c726f

.field public static final icSigColorantTableTag:I = 0x636c7274

.field public static final icSigCopyrightTag:I = 0x63707274

.field public static final icSigCrdInfoTag:I = 0x63726469

.field public static final icSigDeviceMfgDescTag:I = 0x646d6e64

.field public static final icSigDeviceModelDescTag:I = 0x646d6464

.field public static final icSigDeviceSettingsTag:I = 0x64657673

.field public static final icSigDisplayClass:I = 0x6d6e7472

.field public static final icSigGamutTag:I = 0x67616d74

.field public static final icSigGrayData:I = 0x47524159

.field public static final icSigGrayTRCTag:I = 0x6b545243

.field public static final icSigGreenColorantTag:I = 0x6758595a

.field public static final icSigGreenMatrixColumnTag:I = 0x6758595a

.field public static final icSigGreenTRCTag:I = 0x67545243

.field public static final icSigHead:I = 0x68656164

.field public static final icSigHlsData:I = 0x484c5320

.field public static final icSigHsvData:I = 0x48535620

.field public static final icSigInputClass:I = 0x73636e72

.field public static final icSigLabData:I = 0x4c616220

.field public static final icSigLinkClass:I = 0x6c696e6b

.field public static final icSigLuminanceTag:I = 0x6c756d69

.field public static final icSigLuvData:I = 0x4c757620

.field public static final icSigMeasurementTag:I = 0x6d656173

.field public static final icSigMediaBlackPointTag:I = 0x626b7074

.field public static final icSigMediaWhitePointTag:I = 0x77747074

.field public static final icSigNamedColor2Tag:I = 0x6e636c32

.field public static final icSigNamedColorClass:I = 0x6e6d636c

.field public static final icSigOutputClass:I = 0x70727472

.field public static final icSigOutputResponseTag:I = 0x72657370

.field public static final icSigPreview0Tag:I = 0x70726530

.field public static final icSigPreview1Tag:I = 0x70726531

.field public static final icSigPreview2Tag:I = 0x70726532

.field public static final icSigProfileDescriptionTag:I = 0x64657363

.field public static final icSigProfileSequenceDescTag:I = 0x70736571

.field public static final icSigPs2CRD0Tag:I = 0x70736430

.field public static final icSigPs2CRD1Tag:I = 0x70736431

.field public static final icSigPs2CRD2Tag:I = 0x70736432

.field public static final icSigPs2CRD3Tag:I = 0x70736433

.field public static final icSigPs2CSATag:I = 0x70733273

.field public static final icSigPs2RenderingIntentTag:I = 0x70733269

.field public static final icSigRedColorantTag:I = 0x7258595a

.field public static final icSigRedMatrixColumnTag:I = 0x7258595a

.field public static final icSigRedTRCTag:I = 0x72545243

.field public static final icSigRgbData:I = 0x52474220

.field public static final icSigScreeningDescTag:I = 0x73637264

.field public static final icSigScreeningTag:I = 0x7363726e

.field public static final icSigSpace2CLR:I = 0x32434c52

.field public static final icSigSpace3CLR:I = 0x33434c52

.field public static final icSigSpace4CLR:I = 0x34434c52

.field public static final icSigSpace5CLR:I = 0x35434c52

.field public static final icSigSpace6CLR:I = 0x36434c52

.field public static final icSigSpace7CLR:I = 0x37434c52

.field public static final icSigSpace8CLR:I = 0x38434c52

.field public static final icSigSpace9CLR:I = 0x39434c52

.field public static final icSigSpaceACLR:I = 0x41434c52

.field public static final icSigSpaceBCLR:I = 0x42434c52

.field public static final icSigSpaceCCLR:I = 0x43434c52

.field public static final icSigSpaceDCLR:I = 0x44434c52

.field public static final icSigSpaceECLR:I = 0x45434c52

.field public static final icSigSpaceFCLR:I = 0x46434c52

.field public static final icSigTechnologyTag:I = 0x74656368

.field public static final icSigUcrBgTag:I = 0x62666420

.field public static final icSigViewingCondDescTag:I = 0x76756564

.field public static final icSigViewingConditionsTag:I = 0x76696577

.field public static final icSigXYZData:I = 0x58595a20

.field public static final icSigYCbCrData:I = 0x59436272

.field public static final icSigYxyData:I = 0x59787920

.field public static final icTagReserved:I = 0x4

.field public static final icTagType:I = 0x0

.field public static final icXYZNumberX:I = 0x8

.field private static sRGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile; = null

.field private static final serialVersionUID:J = -0x36a86b4f303610beL


# instance fields
.field public transient ID:J

.field private transient deferralInfo:Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

.field private iccProfileSerializedDataVersion:I

.field private transient profileActivator:Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;

.field private transient resolvedDeserializedProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->iccProfileSerializedDataVersion:I

    iput-wide p1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->iccProfileSerializedDataVersion:I

    iput-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->deferralInfo:Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    new-instance p1, Lorg/apache/poi/java/awt/color/ICC_Profile$1;

    invoke-direct {p1, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile$1;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->profileActivator:Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;

    invoke-static {p1}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->registerDeferral(Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getStandardProfileFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getColorSpaceType(J)I
    .locals 1

    const v0, 0x68656164

    invoke-static {p0, p1, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intFromBigEndian([BI)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->iccCStoJCS(I)I

    move-result p0

    return p0
.end method

.method public static getData(JI)[B
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->getTagSize(JI)I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->getTagData(JI[B)V
    :try_end_0
    .catch Lorg/apache/poi/java/awt/color/CMMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getDeferredInstance(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)Lorg/apache/poi/java/awt/color/ICC_Profile;
    .locals 2

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->filename:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getStandardProfile(Ljava/lang/String;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->colorSpaceType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/color/ICC_ProfileRGB;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/color/ICC_ProfileRGB;-><init>(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)V

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/apache/poi/java/awt/color/ICC_ProfileGray;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/color/ICC_ProfileGray;-><init>(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;-><init>(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)V

    return-object v0
.end method

.method public static getInstance(I)Lorg/apache/poi/java/awt/color/ICC_Profile;
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown color space"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-class p0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-enter p0

    :try_start_0
    sget-object v3, Lorg/apache/poi/java/awt/color/ICC_Profile;->LINEAR_RGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    const-string v4, "LINEAR_RGB.pf"

    invoke-direct {v3, v4, v0, v1, v2}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;-><init>(Ljava/lang/String;III)V

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getDeferredInstance(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->LINEAR_RGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->LINEAR_RGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    const-class p0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-enter p0

    :try_start_1
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->GRAYprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    const-string v1, "GRAY.pf"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2, v2}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;-><init>(Ljava/lang/String;III)V

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getDeferredInstance(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->GRAYprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->GRAYprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_2
    const-class p0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-enter p0

    :try_start_2
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->PYCCprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-nez v0, :cond_3

    const-string v0, "PYCC.pf"

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->standardProfileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    const-string v3, "PYCC.pf"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;-><init>(Ljava/lang/String;III)V

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getDeferredInstance(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->PYCCprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t load standard profile: PYCC.pf"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->PYCCprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_3
    const-class p0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->XYZprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    const-string v3, "CIEXYZ.pf"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;-><init>(Ljava/lang/String;III)V

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getDeferredInstance(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->XYZprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    :cond_4
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->XYZprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-exit p0

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_4
    const-class p0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-enter p0

    :try_start_4
    sget-object v3, Lorg/apache/poi/java/awt/color/ICC_Profile;->sRGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-nez v3, :cond_5

    new-instance v3, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    const-string v4, "sRGB.pf"

    invoke-direct {v3, v4, v0, v1, v2}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;-><init>(Ljava/lang/String;III)V

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getDeferredInstance(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->sRGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    :cond_5
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->sRGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/io/InputStream;)Lorg/apache/poi/java/awt/color/ICC_Profile;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getDeferredInstance(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getProfileDataFromStream(Ljava/io/InputStream;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance([B)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ICC Profile Data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/java/awt/color/ICC_Profile;
    .locals 3

    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getProfileFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance(Ljava/io/InputStream;)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance([B)Lorg/apache/poi/java/awt/color/ICC_Profile;
    .locals 4

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->activateProfiles()V

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->loadProfile([B)J

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/java/awt/color/CMMException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getColorSpaceType(J)I

    move-result p0

    const/4 v2, 0x6

    const v3, 0x77747074

    if-ne p0, v2, :cond_1

    invoke-static {v0, v1, v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_1

    const p0, 0x6b545243

    invoke-static {v0, v1, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/apache/poi/java/awt/color/ICC_ProfileGray;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/color/ICC_ProfileGray;-><init>(J)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getColorSpaceType(J)I

    move-result p0

    const/4 v2, 0x5

    if-ne p0, v2, :cond_2

    invoke-static {v0, v1, v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_2

    const p0, 0x7258595a

    invoke-static {v0, v1, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_2

    const p0, 0x6758595a

    invoke-static {v0, v1, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_2

    const p0, 0x6258595a

    invoke-static {v0, v1, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_2

    const p0, 0x72545243

    invoke-static {v0, v1, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_2

    const p0, 0x67545243

    invoke-static {v0, v1, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_2

    const p0, 0x62545243

    invoke-static {v0, v1, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p0, Lorg/apache/poi/java/awt/color/ICC_ProfileRGB;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/color/ICC_ProfileRGB;-><init>(J)V

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;-><init>(J)V
    :try_end_1
    .catch Lorg/apache/poi/java/awt/color/CMMException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;-><init>(J)V

    :goto_0
    return-object p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ICC Profile Data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPCSType(J)I
    .locals 1

    const v0, 0x68656164

    invoke-static {p0, p1, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p0

    const/16 p1, 0x14

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intFromBigEndian([BI)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->iccCStoJCS(I)I

    move-result p0

    return p0
.end method

.method public static getProfileDataFromStream(Ljava/io/InputStream;)[B
    .locals 7

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_0

    return-object v5

    :cond_0
    add-int/2addr v4, v6

    sub-int/2addr v3, v6

    goto :goto_0

    :cond_1
    const/16 v3, 0x24

    aget-byte v3, v1, v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_5

    const/16 v3, 0x25

    aget-byte v3, v1, v3

    const/16 v4, 0x63

    if-ne v3, v4, :cond_5

    const/16 v3, 0x26

    aget-byte v3, v1, v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_5

    const/16 v3, 0x27

    aget-byte v3, v1, v3

    const/16 v4, 0x70

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    new-array v4, v3, [B

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v0

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p0, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_3

    return-object v5

    :cond_3
    add-int/2addr v0, v1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_4
    return-object v4

    :cond_5
    :goto_2
    return-object v5
.end method

.method private static getProfileFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "java.iccprofile.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->isChildOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-static {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getStandardProfileFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_a

    return-object v0

    :cond_a
    return-object v2
.end method

.method private static getStandardProfile(Ljava/lang/String;)Lorg/apache/poi/java/awt/color/ICC_Profile;
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/color/ICC_Profile$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    return-object p0
.end method

.method private static getStandardProfileFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "cmm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->isChildOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static iccCStoJCS(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown color space"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_0
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_1
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_2
    const/4 p0, 0x0

    goto :goto_0

    :sswitch_3
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_4
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_5
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_6
    const/4 p0, 0x7

    goto :goto_0

    :sswitch_7
    const/16 p0, 0x8

    goto :goto_0

    :sswitch_8
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_9
    const/16 p0, 0x19

    goto :goto_0

    :sswitch_a
    const/16 p0, 0x18

    goto :goto_0

    :sswitch_b
    const/16 p0, 0x17

    goto :goto_0

    :sswitch_c
    const/16 p0, 0x9

    goto :goto_0

    :sswitch_d
    const/16 p0, 0xb

    goto :goto_0

    :sswitch_e
    const/16 p0, 0x16

    goto :goto_0

    :sswitch_f
    const/16 p0, 0x15

    goto :goto_0

    :sswitch_10
    const/16 p0, 0x14

    goto :goto_0

    :sswitch_11
    const/16 p0, 0x13

    goto :goto_0

    :sswitch_12
    const/16 p0, 0x12

    goto :goto_0

    :sswitch_13
    const/16 p0, 0x11

    goto :goto_0

    :sswitch_14
    const/16 p0, 0x10

    goto :goto_0

    :sswitch_15
    const/16 p0, 0xf

    goto :goto_0

    :sswitch_16
    const/16 p0, 0xe

    goto :goto_0

    :sswitch_17
    const/16 p0, 0xd

    goto :goto_0

    :sswitch_18
    const/16 p0, 0xc

    :goto_0
    return p0

    :sswitch_data_0
    .sparse-switch
        0x32434c52 -> :sswitch_18
        0x33434c52 -> :sswitch_17
        0x34434c52 -> :sswitch_16
        0x35434c52 -> :sswitch_15
        0x36434c52 -> :sswitch_14
        0x37434c52 -> :sswitch_13
        0x38434c52 -> :sswitch_12
        0x39434c52 -> :sswitch_11
        0x41434c52 -> :sswitch_10
        0x42434c52 -> :sswitch_f
        0x43434c52 -> :sswitch_e
        0x434d5920 -> :sswitch_d
        0x434d594b -> :sswitch_c
        0x44434c52 -> :sswitch_b
        0x45434c52 -> :sswitch_a
        0x46434c52 -> :sswitch_9
        0x47524159 -> :sswitch_8
        0x484c5320 -> :sswitch_7
        0x48535620 -> :sswitch_6
        0x4c616220 -> :sswitch_5
        0x4c757620 -> :sswitch_4
        0x52474220 -> :sswitch_3
        0x58595a20 -> :sswitch_2
        0x59436272 -> :sswitch_1
        0x59787920 -> :sswitch_0
    .end sparse-switch
.end method

.method public static intFromBigEndian([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static intToBigEndian(I[BI)V
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static isChildOf(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    const-string v3, "CS_sRGB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x3e8

    :goto_0
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_0
    const-string v3, "CS_CIEXYZ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x3e9

    goto :goto_0

    :cond_1
    const-string v3, "CS_PYCC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x3ea

    goto :goto_0

    :cond_2
    const-string v3, "CS_GRAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v1, 0x3eb

    goto :goto_0

    :cond_3
    const-string v3, "CS_LINEAR_RGB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x3ec

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance(I)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance([B)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->resolvedDeserializedProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    return-void
.end method

.method public static shortFromBigEndian([BI)S
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static shortToBigEndian(S[BI)V
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static standardProfileExists(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/color/ICC_Profile$4;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/color/ICC_Profile$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->sRGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const-string v0, "CS_sRGB"

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->XYZprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-ne p0, v0, :cond_1

    const-string v0, "CS_CIEXYZ"

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->PYCCprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-ne p0, v0, :cond_2

    const-string v0, "CS_PYCC"

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->GRAYprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-ne p0, v0, :cond_3

    const-string v0, "CS_GRAY"

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/poi/java/awt/color/ICC_Profile;->LINEAR_RGBprofile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-ne p0, v0, :cond_4

    const-string v0, "CS_LINEAR_RGB"

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData()[B

    move-result-object v1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public activateDeferredProfile()V
    .locals 5

    const-string v0, "Invalid ICC Profile Data"

    iget-object v1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->deferralInfo:Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    iget-object v1, v1, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->filename:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->profileActivator:Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;

    iput-object v2, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->deferralInfo:Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    new-instance v2, Lorg/apache/poi/java/awt/color/ICC_Profile$3;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile$3;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileInputStream;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v2}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getProfileDataFromStream(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v2

    invoke-interface {v2, v3}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->loadProfile([B)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J
    :try_end_1
    .catch Lorg/apache/poi/java/awt/color/CMMException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Lorg/apache/poi/java/awt/color/ProfileDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/poi/java/awt/color/ProfileDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :cond_0
    new-instance v2, Lorg/apache/poi/java/awt/color/ProfileDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/poi/java/awt/color/ProfileDataException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v2

    new-instance v3, Lorg/apache/poi/java/awt/color/ProfileDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/poi/java/awt/color/ProfileDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/color/ProfileDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/color/ProfileDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->freeProfile(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->profileActivator:Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->unregisterDeferral(Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getColorSpaceType()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->deferralInfo:Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->colorSpaceType:I

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getColorSpaceType(J)I

    move-result v0

    return v0
.end method

.method public getData()[B
    .locals 4

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->activateProfiles()V

    :cond_0
    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    invoke-interface {v0, v1, v2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->getProfileSize(J)I

    move-result v1

    new-array v1, v1, [B

    iget-wide v2, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->getProfileData(J[B)V

    return-object v1
.end method

.method public getData(I)[B
    .locals 2

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->activateProfiles()V

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    invoke-static {v0, v1, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(JI)[B

    move-result-object p1

    return-object p1
.end method

.method public getGamma(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intFromBigEndian([BI)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->shortFromBigEndian([BI)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x43800000    # 256.0f

    div-float/2addr p1, v0

    return p1

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/color/ProfileDataException;

    const-string v0, "TRC is not a gamma"

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/color/ProfileDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMajorVersion()I
    .locals 2

    const v0, 0x68656164

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v0

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    return v0
.end method

.method public getMediaWhitePoint()[F
    .locals 1

    const v0, 0x77747074

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getXYZTag(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 2

    const v0, 0x68656164

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v0

    const/16 v1, 0x9

    aget-byte v0, v0, v1

    return v0
.end method

.method public getNumComponents()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->deferralInfo:Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->numComponents:I

    return v0

    :cond_0
    const v0, 0x68656164

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intFromBigEndian([BI)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lorg/apache/poi/java/awt/color/ProfileDataException;

    const-string v1, "invalid ICC color space"

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/color/ProfileDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_b
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_c
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_d
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_e
    const/4 v0, 0x2

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32434c52 -> :sswitch_e
        0x33434c52 -> :sswitch_d
        0x34434c52 -> :sswitch_c
        0x35434c52 -> :sswitch_b
        0x36434c52 -> :sswitch_a
        0x37434c52 -> :sswitch_9
        0x38434c52 -> :sswitch_8
        0x39434c52 -> :sswitch_7
        0x41434c52 -> :sswitch_6
        0x42434c52 -> :sswitch_5
        0x43434c52 -> :sswitch_4
        0x434d5920 -> :sswitch_d
        0x434d594b -> :sswitch_c
        0x44434c52 -> :sswitch_3
        0x45434c52 -> :sswitch_2
        0x46434c52 -> :sswitch_1
        0x47524159 -> :sswitch_0
        0x484c5320 -> :sswitch_d
        0x48535620 -> :sswitch_d
        0x4c616220 -> :sswitch_d
        0x4c757620 -> :sswitch_d
        0x52474220 -> :sswitch_d
        0x58595a20 -> :sswitch_d
        0x59436272 -> :sswitch_d
        0x59787920 -> :sswitch_d
    .end sparse-switch
.end method

.method public getPCSType()I
    .locals 2

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->activateProfiles()V

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getPCSType(J)I

    move-result v0

    return v0
.end method

.method public getProfileClass()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->deferralInfo:Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->profileClass:I

    return v0

    :cond_0
    const v0, 0x68656164

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intFromBigEndian([BI)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown profile class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x5

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61627374 -> :sswitch_6
        0x6c696e6b -> :sswitch_5
        0x6d6e7472 -> :sswitch_4
        0x6e6d636c -> :sswitch_3
        0x70727472 -> :sswitch_2
        0x73636e72 -> :sswitch_1
        0x73706163 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRenderingIntent()I
    .locals 2

    const v0, 0x68656164

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intFromBigEndian([BI)I

    move-result v0

    return v0
.end method

.method public getTRC(I)[S
    .locals 5

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intFromBigEndian([BI)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    new-array v1, v0, [S

    const/4 v2, 0x0

    const/16 v3, 0xc

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p1, v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->shortFromBigEndian([BI)S

    move-result v4

    aput-short v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/color/ProfileDataException;

    const-string v0, "TRC is not a table"

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/color/ProfileDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getXYZTag(I)[F
    .locals 6

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object p1

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/16 v3, 0x8

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p1, v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intFromBigEndian([BI)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x47800000    # 65536.0f

    div-float/2addr v4, v5

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->resolvedDeserializedProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    return-object v0
.end method

.method public setData(I[B)V
    .locals 3

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->activateProfiles()V

    :cond_0
    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile;->ID:J

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->setTagData(JI[B)V

    return-void
.end method

.method public setRenderingIntent(I)V
    .locals 3

    const v0, 0x68656164

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {p1, v1, v2}, Lorg/apache/poi/java/awt/color/ICC_Profile;->intToBigEndian(I[BI)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->setData(I[B)V

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData()[B

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
