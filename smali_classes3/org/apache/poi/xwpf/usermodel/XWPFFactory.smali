.class public final Lorg/apache/poi/xwpf/usermodel/XWPFFactory;
.super Lorg/apache/poi/POIXMLFactory;
.source "SourceFile"


# static fields
.field private static final inst:Lorg/apache/poi/xwpf/usermodel/XWPFFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    invoke-direct {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->inst:Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/POIXMLFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/xwpf/usermodel/XWPFFactory;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFFactory;->inst:Lorg/apache/poi/xwpf/usermodel/XWPFFactory;

    return-object v0
.end method


# virtual methods
.method public createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/POIXMLDocumentPart;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/POIXMLDocumentPart;

    return-object p1
.end method

.method public getDescriptor(Ljava/lang/String;)Lorg/apache/poi/POIXMLRelation;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    move-result-object p1

    return-object p1
.end method
