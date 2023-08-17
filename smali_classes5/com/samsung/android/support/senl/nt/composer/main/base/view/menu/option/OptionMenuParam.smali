.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mChildResId:Ljava/lang/Integer;

.field private mMenuInflater:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->mTarget:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->mTarget:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->mChildResId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getChildResId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->mChildResId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMenuInflater()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->mMenuInflater:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->mChildResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMenuInflater(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->mMenuInflater:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;

    return-void
.end method
