.class Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunDirect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$ILandingIntentGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunDirect"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunDirect;-><init>()V

    return-void
.end method


# virtual methods
.method public getLandingIntentForRedirectionUrl(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public putSmpClickFeedbackPathToExtra(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setFlags(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method
