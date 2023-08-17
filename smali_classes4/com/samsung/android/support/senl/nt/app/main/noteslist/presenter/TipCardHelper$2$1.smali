.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->onTipCardMeetEntering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->p(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    return-void
.end method

.method public show(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->setMeetTipCard(I)V

    return-void
.end method
