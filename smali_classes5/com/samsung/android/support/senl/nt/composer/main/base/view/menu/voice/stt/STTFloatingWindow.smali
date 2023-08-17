.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/stt/STTFloatingWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->floating_layout_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/stt/STTFloatingWindow;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    return-void
.end method


# virtual methods
.method public addFloater(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/stt/STTFloatingWindow;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/stt/STTFloatingWindow;->mFloatingArea:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->addFloater(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V

    return-void
.end method
