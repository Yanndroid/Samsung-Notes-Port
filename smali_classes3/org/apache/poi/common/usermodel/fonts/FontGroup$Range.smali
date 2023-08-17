.class Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/usermodel/fonts/FontGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field public upper:I


# direct methods
.method public constructor <init>(ILorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;->upper:I

    iput-object p2, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$Range;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-void
.end method
