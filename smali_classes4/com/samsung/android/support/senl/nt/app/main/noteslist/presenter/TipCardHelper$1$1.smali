.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;->onCreate(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;

.field public final synthetic val$tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->val$tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "TipCardHelper"

    const-string v1, "mSyncTipCardProgressListener# onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->val$tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isValidTipCardOnMode(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->val$tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->val$tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1$1;->val$tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    return-void
.end method
