.class public final enum Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/TextParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

.field public static final enum AUTO:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

.field public static final enum BASELINE:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

.field public static final enum BOTTOM:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

.field public static final enum CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

.field public static final enum TOP:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->AUTO:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    new-instance v1, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->TOP:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    new-instance v3, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    new-instance v5, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    const-string v7, "BASELINE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->BASELINE:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    new-instance v7, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    const-string v9, "BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->BOTTOM:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object v0
.end method
