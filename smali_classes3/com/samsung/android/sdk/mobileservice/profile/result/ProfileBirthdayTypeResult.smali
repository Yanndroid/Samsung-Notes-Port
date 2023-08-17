.class public Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileBirthdayTypeResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/common/result/Result;


# instance fields
.field private mProfileBirthdayType:Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;

.field private mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileBirthdayTypeResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileBirthdayTypeResult;->convertStringToProfileBirthdayType(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileBirthdayTypeResult;->mProfileBirthdayType:Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;

    return-void
.end method

.method private convertStringToProfileBirthdayType(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_1

    sget-object p1, Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;->INVALID:Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;->LEAP_BIRTHDAY:Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;->LUNAR_BIRTHDAY:Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;->SOLAR_BIRTHDAY:Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getResult()Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileBirthdayTypeResult;->mProfileBirthdayType:Lcom/samsung/android/sdk/mobileservice/profile/ProfileApi$ProfileBirthdayType;

    return-object v0
.end method

.method public getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileBirthdayTypeResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    return-object v0
.end method
