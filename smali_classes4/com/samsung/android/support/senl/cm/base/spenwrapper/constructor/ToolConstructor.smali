.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/ToolConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeSDocLocker(Landroid/content/Context;)Lcom/samsung/android/support/senl/document/SDocLocker;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/document/SDocLocker;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static makeSpenBodyTextContext(Landroid/content/Context;)Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static makeSpenCapturePage(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static makeSpenDisplay(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/view/SpenDisplay;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/sdk/pen/view/SpenDisplay;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/view/SpenDisplay;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
