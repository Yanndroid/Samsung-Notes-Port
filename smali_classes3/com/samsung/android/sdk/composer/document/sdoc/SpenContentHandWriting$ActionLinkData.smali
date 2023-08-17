.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionLinkData"
.end annotation


# static fields
.field public static final ACTIONLINK_TYPE_EMAIL:I = 0x2

.field public static final ACTIONLINK_TYPE_FORMULA:I = 0x3

.field public static final ACTIONLINK_TYPE_PHONE:I = 0x0

.field public static final ACTIONLINK_TYPE_URL:I = 0x1


# instance fields
.field public customData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public firstCharRect:Landroid/graphics/Rect;

.field public handleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lastCharRect:Landroid/graphics/Rect;

.field public linkStr:Ljava/lang/String;

.field public linkType:I

.field public pageWidth:I

.field public strokeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;->customData:Ljava/util/HashMap;

    return-void
.end method
