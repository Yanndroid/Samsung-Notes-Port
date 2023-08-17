.class public Lt0/f;
.super Lt0/h;
.source "SourceFile"


# instance fields
.field public d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 0

    invoke-direct {p0}, Lt0/h;-><init>()V

    iput-object p1, p0, Lt0/f;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lt0/h;->b:Lb3/u;

    iget-object v1, p0, Lt0/f;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0, v1}, Lb3/u;->a(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt0/h;->b:Lb3/u;

    invoke-virtual {v0}, Lb3/u;->k()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lt0/h;->b:Lb3/u;

    iget-object v1, p0, Lt0/f;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0, v1}, Lb3/u;->d(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    iget-object v0, p0, Lt0/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lt0/h;->c:Lc0/a;

    iget-object v1, p0, Lt0/f;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-interface {v0, v1}, Lc0/a;->launchSyncTipCardNotification(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not added tipCard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt0/f;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-static {v1}, Lb3/u;->y(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". already exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandleSyncTipCardNotification"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
