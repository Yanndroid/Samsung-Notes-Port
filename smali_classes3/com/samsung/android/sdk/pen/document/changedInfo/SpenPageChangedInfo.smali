.class public Lcom/samsung/android/sdk/pen/document/changedInfo/SpenPageChangedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANGE_TEMPLATE_TYPE:I = 0x5

.field public static final CHANGE_TYPE_ACTION_LINK:I = 0x6

.field public static final CHANGE_TYPE_BACKGROUND_COLOR:I = 0x2

.field public static final CHANGE_TYPE_BACKGROUND_IMAGE:I = 0x7

.field public static final CHANGE_TYPE_CURRENT_LAYER:I = 0x9

.field public static final CHANGE_TYPE_MAX:I = 0xb

.field public static final CHANGE_TYPE_MERGE_LAYERS:I = 0xa

.field public static final CHANGE_TYPE_OFFSET:I = 0x1

.field public static final CHANGE_TYPE_PDF:I = 0x3

.field public static final CHANGE_TYPE_SIZE:I = 0x4

.field public static final CHANGE_TYPE_THUMBNAIL:I = 0x8

.field public static final CHANGE_TYPE_UNDEFINED:I


# instance fields
.field public layerIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public pageChangedType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenPageChangedInfo;->pageChangedType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenPageChangedInfo;->layerIdList:Ljava/util/ArrayList;

    return-void
.end method
