.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field public textBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;->textBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;->start:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;->end:I

    return-void
.end method
