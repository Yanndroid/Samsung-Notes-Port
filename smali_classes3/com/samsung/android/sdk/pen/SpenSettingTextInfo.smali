.class public Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public align:I

.field public bgColor:I

.field public bulletType:I

.field public color:I

.field public direction:I

.field public font:Ljava/lang/String;

.field public isRTLmode:Z

.field public lineIndent:I

.field public lineSpacing:F

.field public lineSpacingType:I

.field public size:F

.field public style:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->color:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->bgColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->style:I

    const/high16 v1, 0x42100000    # 36.0f

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->size:F

    const-string v1, "Roboto-Regular"

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->font:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->direction:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->align:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->lineSpacingType:I

    const v1, 0x3fa66666    # 1.3f

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->lineSpacing:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->lineIndent:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->bulletType:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->isRTLmode:Z

    return-void
.end method
