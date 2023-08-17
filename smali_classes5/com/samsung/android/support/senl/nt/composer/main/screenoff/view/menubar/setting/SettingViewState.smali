.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSettingViewKey:I

.field private mSettingViewVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;->mSettingViewKey:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;->mSettingViewVisibility:I

    return-void
.end method


# virtual methods
.method public getSettingViewKey()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;->mSettingViewKey:I

    return v0
.end method

.method public getSettingViewVisibility()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;->mSettingViewVisibility:I

    return v0
.end method

.method public setSettingViewKey(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;->mSettingViewKey:I

    return-void
.end method

.method public setSettingViewVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;->mSettingViewVisibility:I

    return-void
.end method
