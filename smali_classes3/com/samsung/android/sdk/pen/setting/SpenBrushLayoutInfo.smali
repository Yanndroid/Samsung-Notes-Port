.class public Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_END:I = 0x1

.field public static final ALIGN_START:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final PEN_VIEW_TYPE_LIST:I = 0x2

.field public static final PEN_VIEW_TYPE_OPEN_CLOSE:I = 0x1

.field public static final STYLE_PACKED:I = 0x2

.field public static final STYLE_SPREAD:I = 0x1


# instance fields
.field public colorAlign:I

.field public colorHeightRatio:F

.field public colorWidthRatio:F

.field public isOpened:Z

.field public moveable:Z

.field public penAlign:I

.field public penHeightRatio:F

.field public penViewInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field public penViewType:I

.field public penWidthRatio:F

.field public spaceRatio:F

.field public style:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
