.class public Lcom/samsung/android/app/notes/widget/theme/ToolbarThemeInfo;
.super Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getStrokeColor()I
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    const v1, 0x7f06064f

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsForcedTheme:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1
.end method

.method public getTextColor()I
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    const v1, 0x7f060642

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsForcedTheme:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v1, 0x7f060643

    :cond_1
    return v1
.end method
