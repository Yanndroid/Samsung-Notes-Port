.class public final enum Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/TextParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

.field public static final enum CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

.field public static final enum DIST:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

.field public static final enum JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

.field public static final enum JUSTIFY_LOW:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

.field public static final enum LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

.field public static final enum RIGHT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

.field public static final enum THAI_DIST:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    new-instance v1, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    new-instance v3, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->RIGHT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    new-instance v5, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    const-string v7, "JUSTIFY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    new-instance v7, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    const-string v9, "JUSTIFY_LOW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY_LOW:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    new-instance v9, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    const-string v11, "DIST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->DIST:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    new-instance v11, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    const-string v13, "THAI_DIST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->THAI_DIST:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object v0
.end method
