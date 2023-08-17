.class Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchInfo"
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;->start:I

    iput p2, p0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;->end:I

    return-void
.end method
