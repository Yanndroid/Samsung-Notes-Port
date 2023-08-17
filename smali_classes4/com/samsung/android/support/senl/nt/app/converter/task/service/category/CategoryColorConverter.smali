.class public Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryColorConverter"


# instance fields
.field private final mColorArray:[I

.field private final mDefaultColor:I

.field private final mOldColorArray:[I

.field private final mOldScreenOffMemoColor:I

.field private final mOldUncategorizedColor:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->category_mark_color_screen_off_memo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mOldScreenOffMemoColor:I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->category_mark_color_background_uncategorized:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mOldUncategorizedColor:I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$array;->old_v3_folder_mark_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mOldColorArray:[I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_color_default:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mDefaultColor:I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$array;->folder_mark_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mColorArray:[I

    return-void
.end method


# virtual methods
.method public getConvertedColor(I)I
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mDefaultColor:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mOldUncategorizedColor:I

    if-eq p1, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mOldScreenOffMemoColor:I

    if-eq p1, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mOldColorArray:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mColorArray:[I

    aget v0, v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConvertedColor, srcColor/dstColor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CategoryColorConverter"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getDefaultColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/category/CategoryColorConverter;->mDefaultColor:I

    return v0
.end method
