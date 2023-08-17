.class public Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionIntent"
.end annotation


# instance fields
.field private mQuotaExceededErrorIntent:Landroid/app/PendingIntent;

.field private mShareCompleteIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private putPendingIntent(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getShareCompleteIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;->mShareCompleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public setQuotaExceededErrorIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;->mQuotaExceededErrorIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setShareCompleteIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;->mShareCompleteIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;->mShareCompleteIntent:Landroid/app/PendingIntent;

    const-string/jumbo v2, "share_complete_intent"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;->putPendingIntent(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;->mQuotaExceededErrorIntent:Landroid/app/PendingIntent;

    const-string v2, "quota_exceeded_error_intent"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ActionIntent;->putPendingIntent(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method
