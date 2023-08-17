.class Lcom/samsung/android/app/notes/memolist/NoticeUTActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/memolist/NoticeUTActivity$1;->this$0:Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "NoticeUTActivity"

    const-string v0, "onClick, clearAppData - start"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/Migrations;->NEED_TO_BE_CLEARED_DATA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/NoticeUTActivity$1;->this$0:Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;->c(Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/app/notes/memolist/NoticeUTActivity$1;->this$0:Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p1, "onClick, clearAppData - end"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
