.class public final Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GENERAL_MESSAGE_BUNDLE:Ljava/util/PropertyResourceBundle;

.field private static final TRUNCATE_LENGTH:I = 0x14


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "uk/ac/ed/ph/snuggletex/general-messages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    check-cast v0, Ljava/util/PropertyResourceBundle;

    sput-object v0, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->GENERAL_MESSAGE_BUNDLE:Ljava/util/PropertyResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendErrorAsString(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/InputError;)V
    .locals 4

    new-instance v0, Ljava/text/MessageFormat;

    sget-object v1, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->GENERAL_MESSAGE_BUNDLE:Ljava/util/PropertyResourceBundle;

    const-string v2, "error_as_string"

    invoke-virtual {v1, v2}, Ljava/util/PropertyResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/InputError;->getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;

    move-result-object v2

    invoke-static {v2}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatErrorCodeName(Luk/ac/ed/ph/snuggletex/ErrorCode;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->getErrorMessage(Luk/ac/ed/ph/snuggletex/InputError;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/InputError;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->appendSliceContext(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V

    :cond_0
    return-void
.end method

.method private static appendFrame(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V
    .locals 9

    iget-object v0, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->context:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;

    instance-of v1, v0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;

    invoke-virtual {v0, p2}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->getLineAndColumn(I)[I

    move-result-object p2

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->appendNewlineIfRequired(Ljava/lang/StringBuffer;)V

    new-instance v1, Ljava/text/MessageFormat;

    sget-object v7, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->GENERAL_MESSAGE_BUNDLE:Ljava/util/PropertyResourceBundle;

    const-string v8, "input_context"

    invoke-virtual {v7, v8}, Ljava/util/PropertyResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    aget v7, p2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    aget p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/SnuggleInputReader;->getInput()Luk/ac/ed/ph/snuggletex/SnuggleInput;

    move-result-object p2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-virtual {v1, v4, p0, v2}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SubstitutionContext;

    if-eqz v1, :cond_2

    check-cast v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SubstitutionContext;

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->appendNewlineIfRequired(Ljava/lang/StringBuffer;)V

    new-instance v1, Ljava/text/MessageFormat;

    sget-object v7, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->GENERAL_MESSAGE_BUNDLE:Ljava/util/PropertyResourceBundle;

    const-string v8, "subs_context"

    invoke-virtual {v7, v8}, Ljava/util/PropertyResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v6

    iget-object p2, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutedText:Ljava/lang/CharSequence;

    invoke-static {p2}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v5

    iget-object p2, v0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SubstitutionContext;->replacement:Ljava/lang/CharSequence;

    invoke-static {p2}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-virtual {v1, v4, p0, v2}, Ljava/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p2, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutedSource:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    if-eqz p2, :cond_1

    iget p1, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutionOffset:I

    invoke-static {p0, p2, p1}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->appendFrame(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected SourceContext "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static appendNewlineIfRequired(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public static appendSliceContext(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V
    .locals 3

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->getDocument()Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    move-result-object v0

    iget v1, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->resolveIndex(IZ)Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->resolveIndex(IZ)Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object p1, v1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->slice:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    iget v0, v1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->indexInComponent:I

    invoke-static {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->appendFrame(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V

    return-void

    :cond_1
    new-instance p0, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not resolve component containing error slice starting at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->startIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static formatErrorAsString(Luk/ac/ed/ph/snuggletex/InputError;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->appendErrorAsString(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/InputError;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatErrorAsXHTML(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/InputError;)Lorg/w3c/dom/Element;
    .locals 5

    const-string v0, "http://www.w3.org/1999/xhtml"

    const-string v1, "div"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "class"

    const-string v3, "error"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "h2"

    invoke-interface {p0, v0, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SnuggleTeX Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/InputError;->getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;

    move-result-object v4

    invoke-static {v4}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatErrorCodeName(Luk/ac/ed/ph/snuggletex/ErrorCode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v3, "pre"

    invoke-interface {p0, v0, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {p1}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->getErrorMessage(Luk/ac/ed/ph/snuggletex/InputError;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/InputError;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {v3, p1}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->appendSliceContext(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v1
.end method

.method public static formatErrorAsXML(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Luk/ac/ed/ph/snuggletex/InputError;Z)Lorg/w3c/dom/Element;
    .locals 2

    const-string v0, "error"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isPrefixingSnuggleXML()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getSnuggleXMLPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":error"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_1
    :goto_0
    const-string p1, "http://www.ph.ed.ac.uk/snuggletex"

    invoke-interface {p0, p1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/InputError;->getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;

    move-result-object v0

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/ErrorCode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/InputError;->getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;

    move-result-object v0

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/ErrorCode;->getErrorGroup()Luk/ac/ed/ph/snuggletex/ErrorGroup;

    move-result-object v0

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/ErrorGroup;->getPackage()Luk/ac/ed/ph/snuggletex/SnugglePackage;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-static {p2}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->getErrorMessage(Luk/ac/ed/ph/snuggletex/InputError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/InputError;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p3, p2}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->appendSliceContext(Ljava/lang/StringBuffer;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;)V

    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    return-object p1
.end method

.method public static formatErrorAsXML(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/InputError;Z)Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatErrorAsXML(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Luk/ac/ed/ph/snuggletex/InputError;Z)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static formatErrorCodeName(Luk/ac/ed/ph/snuggletex/ErrorCode;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Luk/ac/ed/ph/snuggletex/ErrorCode;->getErrorGroup()Luk/ac/ed/ph/snuggletex/ErrorGroup;

    move-result-object v0

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/ErrorGroup;->getPackage()Luk/ac/ed/ph/snuggletex/SnugglePackage;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Luk/ac/ed/ph/snuggletex/ErrorCode;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Core"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatErrorGroup(Luk/ac/ed/ph/snuggletex/ErrorGroup;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Luk/ac/ed/ph/snuggletex/ErrorGroup;->getPackage()Luk/ac/ed/ph/snuggletex/SnugglePackage;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getErrorMessageBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Luk/ac/ed/ph/snuggletex/ErrorGroup;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static formatText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static varargs getErrorMessage(Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Luk/ac/ed/ph/snuggletex/ErrorCode;->getErrorGroup()Luk/ac/ed/ph/snuggletex/ErrorGroup;

    move-result-object v0

    invoke-interface {v0}, Luk/ac/ed/ph/snuggletex/ErrorGroup;->getPackage()Luk/ac/ed/ph/snuggletex/SnugglePackage;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getErrorMessageBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatErrorCodeName(Luk/ac/ed/ph/snuggletex/ErrorCode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getErrorMessage(Luk/ac/ed/ph/snuggletex/InputError;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/InputError;->getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;

    move-result-object v0

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/InputError;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->getErrorMessage(Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
