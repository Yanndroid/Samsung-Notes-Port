.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorInfo"
.end annotation


# instance fields
.field public index:I

.field public pos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;->index:I

    iput p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;->pos:I

    return-void
.end method
