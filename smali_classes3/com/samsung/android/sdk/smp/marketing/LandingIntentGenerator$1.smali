.class synthetic Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$sdk$smp$marketing$LandingIntentGenerator$RunType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->values()[Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$1;->$SwitchMap$com$samsung$android$sdk$smp$marketing$LandingIntentGenerator$RunType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->RUN_VIA_NOTIFICATION:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$1;->$SwitchMap$com$samsung$android$sdk$smp$marketing$LandingIntentGenerator$RunType:[I

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->RUN_DIRECT:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
