.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mOptionMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SharePagesPopupMenu"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;->mOptionMenuListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    return-object p0
.end method


# virtual methods
.method public getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;)V

    return-object v0
.end method

.method public getSALogEventId()Ljava/lang/String;
    .locals 1

    const-string v0, "7421"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
