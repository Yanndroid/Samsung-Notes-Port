.class public Lcom/samsung/android/support/senl/nt/composer/main/base/util/Restriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTACH_MAX_COUNT:I = 0x64

.field public static final COEDIT_LARGE_MAX_COUNT:I = 0x64

.field public static final COEDIT_PASTE_MAX_COUNT:I = 0x64

.field public static final FILE_NAME_MAX_BYTES:I = 0xc8

.field public static final FILE_NAME_MAX_LENGTH:I = 0x64

.field public static final SCROLL_THRESHOLD:I = 0x14

.field public static final SHARE_TITLE_MAX_LENGTH:I = 0x32

.field public static final TITLE_MAX_LENGTH:I = 0x32

.field public static final VOICE_TITLE_MAX_LENGTH:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTitleForFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static showToastCoeditErrorOverLargeMaxCount(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$plurals;->can_not_add_more_than_items:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return v5
.end method
