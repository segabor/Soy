//
//  ContentKind.swift
//  SoyKit
//
//  Created by Gábor Sebestyén on 2018. 03. 15..
//

/** A kind of textual content. */
public enum ContentKind {
    /**
     * A snippet of HTML that does not start or end inside a tag, comment, entity, or DOCTYPE; and
     * that does not contain any executable code (JS, {@code <object>}s, etc.) from a different
     * trust domain.
     */
    case HTML

    /**
     * Executable Javascript code or expression, safe for insertion in a script-tag or event handler
     * context, known to be free of any attacker-controlled scripts. This can either be
     * side-effect-free Javascript (such as JSON) or Javascript that entirely under Google's
     * control.
     */
    case JS

    /** A properly encoded portion of a URI. */
    case URI

    /** Resource URIs used in script sources, stylesheets, etc which are not in attacker control. */
    case TRUSTED_RESOURCE_URI

    /** An attribute name and value, such as {@code dir="ltr"}. */
    case ATTRIBUTES

    /** A CSS3 declaration, property, value or group of semicolon separated declarations. */
    case CSS
}
