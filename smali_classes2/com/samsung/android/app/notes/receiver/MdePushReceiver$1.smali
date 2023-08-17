.class Lcom/samsung/android/app/notes/receiver/MdePushReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->handleSpaceDeleted(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/receiver/MdePushReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/receiver/MdePushReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$1;->this$0:Lcom/samsung/android/app/notes/receiver/MdePushReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteLocalSharedSdocFinished()V
    .locals 2

    const-string v0, "MdePushReceiver"

    const-string v1, "onReceive DeleteLocalSharedSdocTask finish!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
