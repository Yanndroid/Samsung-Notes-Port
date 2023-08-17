.class public Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANGED_BASE:I = 0x0

.field public static final CHANGED_MAX:I = 0x5

.field public static final CHANGED_OBJECT_LIST:I = 0x4

.field public static final CHANGED_TEXT:I = 0x1


# instance fields
.field public afterRect:Landroid/graphics/RectF;

.field public afterRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public beforeRect:Landroid/graphics/RectF;

.field public beforeRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public object:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field public objectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->object:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->beforeRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->afterRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->objectList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->beforeRectList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->afterRectList:Ljava/util/ArrayList;

    return-void
.end method
