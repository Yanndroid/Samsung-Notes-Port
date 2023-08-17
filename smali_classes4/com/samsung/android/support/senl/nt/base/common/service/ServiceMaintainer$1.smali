.class Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;->bind(Landroid/content/Context;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;->a(Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;->a(Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
