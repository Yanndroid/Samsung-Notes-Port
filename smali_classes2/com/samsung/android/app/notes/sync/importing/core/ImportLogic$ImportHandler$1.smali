.class Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$1;->this$0:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "ImportLogic"

    const-string p2, "SelfBind connected"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ImportLogic"

    const-string v0, "SelfBind disconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
