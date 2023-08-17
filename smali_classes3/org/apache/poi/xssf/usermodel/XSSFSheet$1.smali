.class Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftRows(IIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/xssf/usermodel/XSSFComment;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field public final synthetic val$n:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->compare(Lorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->hashCode()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :cond_0
    iget p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->val$n:I

    const/4 p2, 0x1

    const/4 v2, -0x1

    if-lez p1, :cond_2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    return p2

    :cond_2
    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    return p2
.end method
