.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNone;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuNone"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNone;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mType:I

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
