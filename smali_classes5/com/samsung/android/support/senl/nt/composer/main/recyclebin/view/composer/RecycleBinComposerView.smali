.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/composer/RecycleBinComposerView;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method


# virtual methods
.method public init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mIsBasicComposer:Z

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->setModeOfSpenComposerView(ZI)V

    return-void
.end method
