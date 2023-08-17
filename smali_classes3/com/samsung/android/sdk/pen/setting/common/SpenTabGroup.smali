.class public Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TabGroup"


# instance fields
.field private mChildClickListener:Landroid/view/View$OnClickListener;

.field private mSelectView:Landroid/view/View;

.field private mSelectedFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

.field private mSelectedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSelectedFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mChildClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mTabs:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectedFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->REGULAR:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mUnSelectedFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->select(Landroid/view/View;Z)V

    return-void
.end method

.method private addTab(Landroid/view/View;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mTabs:Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->applyFont(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mChildClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private applyFont(Landroid/view/View;Z)V
    .locals 3

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectedFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mUnSelectedFontName:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/TextView;

    const/4 v2, 0x0

    check-cast p1, Landroid/widget/TextView;

    aput-object p1, v1, v2

    invoke-static {v0, p2, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getChild(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mTabs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private select(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_2

    const-string p1, "TabGroup"

    const-string v0, "Already Selected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;->onTabReselected(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->applyFont(Landroid/view/View;Z)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;->onTabUnselected(Landroid/view/View;)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->applyFont(Landroid/view/View;Z)V

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;->onTabSelected(Landroid/view/View;)V

    :cond_4
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public addTab(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->addTab(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public addTab(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->addTab(Landroid/view/View;IZ)V

    return-void
.end method

.method public addTab(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mTabs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->addTab(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mTabs:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;

    return-void
.end method

.method public getSelectId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public select(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->getChild(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->select(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->mSelectedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;

    return-void
.end method
