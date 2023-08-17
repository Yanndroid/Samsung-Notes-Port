.class public Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/usermodel/fonts/FontGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontGroupRange"
.end annotation


# instance fields
.field private fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field private len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object p1
.end method

.method public static synthetic access$112(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;I)I
    .locals 1

    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    return v0
.end method


# virtual methods
.method public getFontGroup()Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    return v0
.end method
