.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ParagraphChecker"
.end annotation


# static fields
.field public static final RETURN_TYPE_CONTINUE:I = 0x1

.field public static final RETURN_TYPE_NONE:I


# instance fields
.field public enable:Z

.field public selectionPEnd:I

.field public selectionPStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->enable:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->selectionPStart:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ParagraphChecker;->selectionPEnd:I

    return-void
.end method


# virtual methods
.method public abstract checkParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)I
.end method

.method public abstract getResult()I
.end method
