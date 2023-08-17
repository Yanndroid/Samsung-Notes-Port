.class public Lh/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/b;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh/b;


# direct methods
.method public constructor <init>(Lh/b;)V
    .locals 0

    iput-object p1, p0, Lh/b$a;->a:Lh/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()Ljava/lang/String;
    .locals 1

    const-string v0, "SYNC"

    return-object v0
.end method

.method public onBind(Z)V
    .locals 1

    const-string v0, "SCRPCSettingV1"

    if-eqz p1, :cond_0

    const-string p1, "bindSamsungCloudRPC() : succeed to bind"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lh/b$a;->a:Lh/b;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lh/b;->n(Lh/b;I)V

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "SCPCSettingV1"

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v0, Lh/b$a$a;

    invoke-direct {v0, p0}, Lh/b$a$a;-><init>(Lh/b$a;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "bindSamsungCloudRPC() : failed to bind!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lh/b$a;->a:Lh/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lh/b;->n(Lh/b;I)V

    :goto_0
    return-void
.end method
