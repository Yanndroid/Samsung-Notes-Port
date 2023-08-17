.class public final enum Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

.field public static final enum RUN_DIRECT:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

.field public static final enum RUN_VIA_NOTIFICATION:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->RUN_VIA_NOTIFICATION:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->RUN_DIRECT:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    const-string v1, "RUN_VIA_NOTIFICATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->RUN_VIA_NOTIFICATION:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    new-instance v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    const-string v1, "RUN_DIRECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->RUN_DIRECT:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    invoke-static {}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->$values()[Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->$VALUES:[Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->$VALUES:[Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    return-object v0
.end method
