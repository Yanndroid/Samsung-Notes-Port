.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutClipboard;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClipboardController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ShortCutClipboard"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutClipboard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutClipboard;->mClipboardController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    const/16 p1, 0x3f1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/AbsShortCutAction;->setKeyCode(IZZZ)V

    return-void
.end method


# virtual methods
.method public doAction()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutClipboard;->TAG:Ljava/lang/String;

    const-string v1, "doAction# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutClipboard;->mClipboardController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getTypeAll()I

    move-result v1

    const-string v2, "ShortCutClipboard"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->setClipboardFilter(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/shortcut/ShortCutClipboard;->mClipboardController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getTypeAll()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->showClipboard(I)V

    const/4 v0, 0x1

    return v0
.end method
