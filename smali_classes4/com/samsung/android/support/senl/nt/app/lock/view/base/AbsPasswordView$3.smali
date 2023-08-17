.class Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    const/16 p3, 0x17

    if-eq p2, p3, :cond_1

    const/16 p3, 0x42

    if-eq p2, p3, :cond_1

    const/16 p3, 0xa0

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->onDoneButtonClicked()Z

    return v0

    :cond_2
    :goto_0
    return p1
.end method
