.class public Lorg/apache/xmlbeans/SchemaTypeLoaderException;
.super Lorg/apache/xmlbeans/XmlRuntimeException;
.source "SourceFile"


# static fields
.field public static final BAD_HANDLE:I = 0xd

.field public static final BAD_PARTICLE_TYPE:I = 0xb

.field public static final INT_TOO_LARGE:I = 0xa

.field public static final IO_EXCEPTION:I = 0x9

.field public static final MALFORMED_CONTENT_MODEL:I = 0x7

.field public static final NESTED_EXCEPTION:I = 0xe

.field public static final NOT_WRITEABLE:I = 0xc

.field public static final NO_RESOURCE:I = 0x0

.field public static final UNRECOGNIZED_INDEX_ENTRY:I = 0x5

.field public static final WRONG_FILE_TYPE:I = 0x4

.field public static final WRONG_MAGIC_COOKIE:I = 0x1

.field public static final WRONG_MAJOR_VERSION:I = 0x2

.field public static final WRONG_MINOR_VERSION:I = 0x3

.field public static final WRONG_PROPERTY_TYPE:I = 0x6

.field public static final WRONG_SIMPLE_VARIETY:I = 0x8


# instance fields
.field private _code:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ") - code "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;)V

    iput p4, p0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;->_code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ") - code "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;)V

    iput p4, p0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;->_code:I

    invoke-virtual {p0, p5}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;->_code:I

    return v0
.end method
