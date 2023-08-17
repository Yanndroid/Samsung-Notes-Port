.class public Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper$IVersionUpdate;
    }
.end annotation


# instance fields
.field private mIVersionUpdate:Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper$IVersionUpdate;

.field private final mVersionUpdateManager:Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper;->mVersionUpdateManager:Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;

    return-void
.end method


# virtual methods
.method public findUpgrades(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper;->mVersionUpdateManager:Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;->findUpgrades(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onUpgrade(II)Z
    .locals 1

    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper;->mIVersionUpdate:Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper$IVersionUpdate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper$IVersionUpdate;->onStart()Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper;->findUpgrades(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;->onUpgrade()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper;->mIVersionUpdate:Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper$IVersionUpdate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper$IVersionUpdate;->onEnd()Z

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newVersion is less than oldVersion"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIVersionUpdate(Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper$IVersionUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper;->mIVersionUpdate:Lcom/samsung/android/support/senl/nt/app/version/VersionUpdateHelper$IVersionUpdate;

    return-void
.end method
