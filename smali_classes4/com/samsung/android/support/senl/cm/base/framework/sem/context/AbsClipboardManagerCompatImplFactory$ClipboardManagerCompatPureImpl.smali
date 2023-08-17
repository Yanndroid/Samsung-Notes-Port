.class Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatPureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$IClipboardManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipboardManagerCompatPureImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/context/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatPureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowClipboard(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canShowClipboardOnSIP(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dismissDialog(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public filterClip(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public finishBind(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public getClipData(Ljava/lang/Object;)Landroid/content/ClipData;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClips(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataListSize(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPasteListener(Landroid/content/Context;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrimaryClip(Landroid/content/Context;I)Landroid/content/ClipData;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeAll()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTypeHtml()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getTypeNone()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTypeText()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasPrimaryClip(Landroid/content/Context;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasSaveServicePermission(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isClipboardAllowed(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isClipboardManagerEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isShowing(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setClip(Landroid/content/Context;Landroid/content/ClipData$Item;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showDialog(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
