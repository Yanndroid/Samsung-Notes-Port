.class public Lt0/d;
.super Lt0/h;
.source "SourceFile"


# instance fields
.field public d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 0

    invoke-direct {p0}, Lt0/h;-><init>()V

    iput-object p1, p0, Lt0/d;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lt0/h;->c:Lc0/a;

    iget-object v1, p0, Lt0/d;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-interface {v0, v1}, Lc0/a;->launchSyncNotification(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    return-void
.end method
