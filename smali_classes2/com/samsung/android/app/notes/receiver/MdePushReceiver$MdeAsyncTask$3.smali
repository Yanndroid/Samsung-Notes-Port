.class Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask$3;->this$0:Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask$3;->this$0:Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;

    iget-object v0, v0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeAsyncTask;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_wifi_not_available_body:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
