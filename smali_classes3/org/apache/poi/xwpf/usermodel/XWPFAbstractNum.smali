.class public Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

.field public numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-void
.end method


# virtual methods
.method public getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    return-object v0
.end method

.method public getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    return-object v0
.end method

.method public getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object v0
.end method

.method public setNumbering(Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-void
.end method
