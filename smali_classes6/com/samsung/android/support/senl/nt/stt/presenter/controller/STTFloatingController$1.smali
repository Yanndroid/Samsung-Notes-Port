.class Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;->a(Lcom/samsung/android/support/senl/nt/stt/presenter/controller/STTFloatingController;)Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/stt/presenter/STTPresenterContract;->onSTTEditBtnClick()V

    return-void
.end method
