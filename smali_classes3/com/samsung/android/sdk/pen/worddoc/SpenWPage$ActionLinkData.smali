.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
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

.field public repObjectUuid:Ljava/lang/String;

.field public strokeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
