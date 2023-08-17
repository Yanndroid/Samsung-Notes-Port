.class public Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DECIMAL:I = 0x1

.field public static final HEXADECIMAL:I = 0x2

.field public static final PREDEF_ENTITY:I

.field private static final _predefEntities:Ljava/util/HashMap;


# instance fields
.field private _charMap:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->_predefEntities:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x3c

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->_charMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addMapping(CI)V
    .locals 4

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    const-string v2, ";"

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->_charMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "&#x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    const-string p2, "XmlOptionCharEscapeMap.addMapping(): mode must be PREDEF_ENTITY, DECIMAL or HEXADECIMAL"

    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->_charMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    sget-object p1, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->_predefEntities:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->_charMap:Ljava/util/HashMap;

    goto :goto_1

    :goto_2
    return-void

    :cond_3
    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    const-string p2, "XmlOptionCharEscapeMap.addMapping(): the PREDEF_ENTITY mode can only be used for the following characters: <, >, &, \" and \'"

    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMappings(CCI)V
    .locals 0

    if-gt p1, p2, :cond_1

    :goto_0
    if-gt p1, p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->addMapping(CI)V

    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lorg/apache/xmlbeans/XmlException;

    const-string p2, "XmlOptionCharEscapeMap.addMappings(): ch1 must be <= ch2"

    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsChar(C)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->_charMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEscapedString(C)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;->_charMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
